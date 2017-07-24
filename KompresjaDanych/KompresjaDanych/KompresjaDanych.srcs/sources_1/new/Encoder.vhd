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
           
           
           symbol : in STD_LOGIC_VECTOR (7 downto 0);
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
                      
           end_data : in STD_LOGIC; --to dispose buffor
           end_state : in STD_LOGIC_VECTOR(7 downto 0)
       );
 end component;

component NbRom
port(
        symbol : in STD_LOGIC_VECTOR (7 downto 0);
        clk: in STD_LOGIC;
        nb : out STD_LOGIC_VECTOR (7 downto 0)
    );
end component;

component StartRom
port(
    symbol : in STD_LOGIC_VECTOR (7 downto 0);
    clk: in STD_LOGIC;
    startValue : out STD_LOGIC_VECTOR (7 downto 0)
    );
end component;

signal init_buff, 
       start_buff,
       ready_buff: STD_LOGIC;
       
signal nb_bits_buff : STD_LOGIC_VECTOR(3 downto 0);
signal empty_buff : STD_LOGIC := '0';
signal encoderTableState : STD_LOGIC_VECTOR(7 downto 0);
signal nb_rom: STD_LOGIC_VECTOR (7 downto 0);
signal startForSymbol: STD_LOGIC_VECTOR (7 downto 0); 

type state_type is (IDLE, GET_SYMBOL, COMPUTE_NEXT_STATE, GET_rVALUE, GET_AMOUNT, GET_START_STATE, WAIT_FOR_END);
signal current_state, next_state : state_type;

begin 

buff: Buffor
Port map(
            clk => clk,
            init => init_buff,
            ready => ready_buff,
            start => start_buff,
            
            nbBits => nb_bits_buff,
            x => encoderTableState,
            stream => data_out,
            produce_symbol => produced_symbol,
            end_data => empty_buff,
            end_state => encoderTableState
        );

nbRm: NbRom
Port map(
            symbol => symbol,
            clk => clk,
            nb => nb_rom
        );

strRom: StartRom
Port map(
        clk => clk,
        symbol => symbol,
        startValue => startForSymbol
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
    
main_process: process(current_state, symbol, start, new_symbol, ready_buff)
    variable nb_bits: std_logic_vector(7 downto 0) := "00000000";
    variable state: std_logic_vector(7 downto 0);
    variable r_value_int, amount: integer;
    variable counter : integer := 0;
    
    begin
        next_state <= current_state;
        
        
        case current_state is
            when IDLE =>
                r_value_int := 0;
                amount := 0;
                counter := 0;
                
                init_buff <= '1';
                empty_buff <= '0';
                ready <= '0';
                                                  
                if(start = '1') then
                   end_data <= '0';
                   init_buff <= '0';
                   next_state <= GET_AMOUNT;
                end if;
               
            when GET_AMOUNT =>
                amount := to_integer(unsigned(symbol));                
                next_state <= GET_rVALUE; 
                
            when GET_rVALUE =>                             
                r_value_int := to_integer(unsigned(symbol)) + 1;         
                next_state <= GET_START_STATE;  
                
            when GET_START_STATE =>
                state := symbol;
                next_state <= GET_SYMBOL;
                
            when GET_SYMBOL => 
            
                 ready <= '1';
                 start_buff <= '0';
                          
                if(new_symbol = '1') then
                    counter := counter + 1;
                    ready <= '0';
            
                    nb_bits := state + nb_rom;
                    nb_bits := (r_value_int - 1 downto 0 => '0') & nb_bits(7 downto r_value_int);
                    nb_bits_buff <= nb_bits(3 downto 0);
                    encoderTableState <= state;
                    start_buff <= '1';           
                    --nb := nb_rom;
                    
                    next_state <= COMPUTE_NEXT_STATE;
                             
                end if;
                         
            when COMPUTE_NEXT_STATE  =>
            
                state :=  
                    (to_integer(unsigned(nb_bits)) - 1 downto 0 => '0') &
                     state(7 - to_integer(unsigned(nb_bits)) downto 0);
                state := startForSymbol + state;              
                
                if(counter = amount) then
                   encoderTableState <= state;
                   empty_buff <= '1';
                  
                   next_state <= WAIT_FOR_END;
                else
                    next_state <= GET_SYMBOL;            
                end if;    
            
            when WAIT_FOR_END =>
                 if(ready_buff = '1') then
                  end_data <= '1';
                  next_state <= IDLE;
                 end if;
        end case;
               
    end process;

end encode;
