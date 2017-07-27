----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2017 16:17:45
-- Design Name: 
-- Module Name: Encoder - encode
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD; 
USE IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Encoder is
    Port ( 
           
           init : in STD_LOGIC; -- reset
           start : in STD_LOGIC;
           ready : out STD_LOGIC;
           clk : in STD_LOGIC;
           end_data : out STD_LOGIC;
           
           
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           data_out : out STD_LOGIC_VECTOR (7 downto 0);
           produced_symbol : out STD_LOGIC;
           new_symbol : in STD_LOGIC
         );
           
end Encoder;

architecture encode of Encoder is

component Buffor
   Port(     
           init : in STD_LOGIC;
           start : in STD_LOGIC;
           ready : out STD_LOGIC;
           clk : in STD_LOGIC;
           
           nbBits : in STD_LOGIC_VECTOR(3 downto 0);
           stream : out STD_LOGIC_VECTOR(7 downto 0);
           x : in STD_LOGIC_VECTOR(7 downto 0);
           
           produce_symbol : out STD_LOGIC;
                      
           end_data : in STD_LOGIC --to dispose buffor
       );
 end component;

component NbRom
    Port(
        symbol : in STD_LOGIC_VECTOR (7 downto 0);
        clk: in STD_LOGIC;
        result : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component StartRom
    Port(
        symbol : in STD_LOGIC_VECTOR (7 downto 0);
        clk: in STD_LOGIC;
        result : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component encodingTableRom
	Port ( symbol : in STD_LOGIC_VECTOR(0 to 7);
		   clk : in STD_LOGIC;
		   result: out STD_LOGIC_VECTOR(0 to 7));
    end component;

signal init_buff, 
       start_buff,
       ready_buff: STD_LOGIC;
       
signal nb_bits_buff : STD_LOGIC_VECTOR(3 downto 0):= x"0";
signal empty_buff : STD_LOGIC := '0';

signal Start_Symbol, Computed_State, Nb_Rom,
       State, Symbol, Debug, State_To_Buff : STD_LOGIC_VECTOR (7 downto 0) := x"00";

type state_type is (IDLE, GET_SYMBOL, COMPUTE_NEXT_STATE, GET_rVALUE, GET_AMOUNT, WAIT_FOR_END);
signal current_state, next_state : state_type;

begin 

buff: Buffor
Port map(
            clk => clk,
            init => init_buff,
            ready => ready_buff,
            start => start_buff,
            
            nbBits => nb_bits_buff,
            x => State_To_Buff,
            stream => data_out,
            produce_symbol => produced_symbol,
            end_data => empty_buff
        );

nbRm: NbRom
Port map(
            clk => clk,
            symbol => Symbol,
            result => Nb_Rom
        );

strRom: StartRom
Port map(
            clk => clk,
            symbol => Symbol,
            result => Start_Symbol
        );
        
encRom: encodingTableRom
Port map(
            clk => clk,
            symbol => Computed_State,
            result => State
        );
        
state_machine: process(CLK)
    begin
     if(rising_edge(clk)) then
        if(init = '1')then
            current_state <= IDLE;
        else
            current_state <= next_state;
        end if;
      end if;
    end process;
    
main_process: process(current_state, data_in, start, new_symbol, ready_buff)
    variable nb_bits: std_logic_vector(7 downto 0) := "00000000";
    variable actual_state : std_logic_vector(7 downto 0);
    variable r_value_int, amount: integer;
    variable counter : integer := 0;
    
    begin
        next_state <= current_state;
        
        
        case current_state is
            when IDLE =>
            
                end_data <= '0';
                r_value_int := 0;
                amount := 0;
                counter := 0;
                Computed_State <= x"00";
                init_buff <= '1';
                empty_buff <= '0';
                ready <= '0';
                                                  
                if(start = '1') then
                   end_data <= '0';
                   init_buff <= '0';
                   next_state <= GET_AMOUNT;
                end if;
               
            when GET_AMOUNT =>
            
                amount := to_integer(unsigned(data_in));                
                next_state <= GET_rVALUE; 
                
            when GET_rVALUE =>
                                       
                r_value_int := to_integer(unsigned(data_in)) + 1;         
                next_state <= GET_SYMBOL ;  
                         
            when GET_SYMBOL =>
            
                 actual_state := State;
                 ready <= '1';
                 start_buff <= '0';
                          
                if(new_symbol = '1') then
                    counter := counter + 1;
                    ready <= '0';
                    Symbol <= data_in;
                    
                    next_state <= COMPUTE_NEXT_STATE;
                             
                end if;
                         
            when COMPUTE_NEXT_STATE  =>
                
                nb_bits := actual_state + Nb_Rom;
                nb_bits := (r_value_int - 1 downto 0 => '0') & nb_bits(7 downto r_value_int);
                                
                nb_bits_buff <= nb_bits(3 downto 0);
                
                State_To_Buff <= actual_state;
                start_buff <= '1';
                
                Computed_State <= Start_Symbol +((to_integer(unsigned(nb_bits)) - 1 downto 0 => '0') & 
                                                  actual_state(7 downto to_integer(unsigned(nb_bits))));
                                                                               
                Debug <= ((to_integer(unsigned(nb_bits)) - 1 downto 0 => '0') & actual_state(7 downto to_integer(unsigned(nb_bits))));
                if(counter = amount) then
                   empty_buff <= '1';                  
                   next_state <= WAIT_FOR_END;
                else
                    next_state <= GET_SYMBOL;            
                end if;    
            
            when WAIT_FOR_END =>
                 start_buff <= '0';
                 end_data <= '1';
                 
                 if(ready_buff = '1') then              
                  next_state <= IDLE;
                  end_data <= '0';
                 end if;
                 
        end case;
               
    end process;

end encode;
