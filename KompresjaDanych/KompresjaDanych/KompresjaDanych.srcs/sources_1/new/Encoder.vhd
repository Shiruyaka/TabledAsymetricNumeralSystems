----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.08.2017 09:57:28
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Encoder is
    Port ( 
           
           init : in STD_LOGIC; -- reset
           start : in STD_LOGIC;
           clk : in STD_LOGIC;
           end_data : out STD_LOGIC;
           
           
           data_in : in STD_LOGIC_VECTOR (15 downto 0);
           data_out : out STD_LOGIC_VECTOR (15 downto 0);
           amount_bytes : in STD_LOGIC_VECTOR(31 downto 0);
           r_value : in STD_LOGIC_VECTOR(7 downto 0);
           
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
           
           nbBits : in STD_LOGIC_VECTOR(7 downto 0);
           stream : out STD_LOGIC_VECTOR(15 downto 0);
           x : in STD_LOGIC_VECTOR(15 downto 0);
           amount_bytes : in STD_LOGIC_VECTOR(31 downto 0);
           
           produce_symbol : out STD_LOGIC;
                      
           end_data : in STD_LOGIC --to dispose buffor
       );
 end component;

component NbRom
    Port(
            symbol : in STD_LOGIC_VECTOR (15 downto 0);
            clk: in STD_LOGIC;
            result : out STD_LOGIC_VECTOR (15 downto 0));
end component;

component StartRom
    Port(
            symbol : in STD_LOGIC_VECTOR (15 downto 0);
            clk: in STD_LOGIC;
            result : out STD_LOGIC_VECTOR (15 downto 0));
end component;

component encodingTableRom
	Port ( 
	        symbol : in STD_LOGIC_VECTOR(15 downto 0);
		    clk : in STD_LOGIC;
		    result: out STD_LOGIC_VECTOR(15 downto 0));
    end component;

signal 
       Compute,
       Init_Buff, 
       Start_Buff, 
       Ready_Buff,
       Empty_Buff,
       Empty : STD_LOGIC := '0';

signal Debug, Nb_Bits_Buff : STD_LOGIC_VECTOR (7 downto 0) := x"00";

signal
       Nb_Rom, 
       Start_Symbol, 
       Symbol, 
       State_To_Buff, 
       Computed_State,
       Actual_State,
       State : STD_LOGIC_VECTOR(15 downto 0) := x"0000";

signal
       r_value_int: integer := 0;
       
type state_type is (IDLE, GET_SYMBOL, COMPUTE_NEXT_STATE, WAIT_FOR_END_ENC, SET_END_STATE, WAIT_FOR_END);
signal current_state, next_state : state_type;


begin
buff: Buffor
Port map(
            clk => clk,
            init => Init_Buff,
            ready => Ready_Buff,
            start => Start_Buff,
            
            nbBits => Nb_Bits_Buff,
            x => State_To_Buff,
            stream => data_out,
            amount_bytes => amount_bytes,
            produce_symbol => produced_symbol,
            
            end_data => empty_buff
        );


nbRm: NbRom
Port map(
            clk => clk,
            symbol => data_in,
            result => Nb_Rom
        );

strRom: StartRom
Port map(
            clk => clk,
            symbol => data_in,
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

compute_and_start_buffor: process(Clk, Compute)

variable nb_bits, debug: std_logic_vector(15 downto 0);
variable counter: integer := 0;
begin
    if(rising_edge(Clk)) then
    
        if(Compute = '1') then
            
            nb_bits := Actual_State + Nb_Rom;
            
            case r_value_int is
                when 2 => 
                    nb_bits := (1 downto 0 => '0') &
                               nb_bits(15 downto 2);
                when 3 =>
                    nb_bits := (2 downto 0 => '0') &
                               nb_bits(15 downto 3);
                when 4 =>
                    nb_bits := (3 downto 0 => '0') &
                               nb_bits(15 downto 4);
                when 5 =>
                    nb_bits := (4 downto 0 => '0') &
                               nb_bits(15 downto 5);                              
                when 6 =>
                    nb_bits := (5 downto 0 => '0') &
                               nb_bits(15 downto 6);               
                when 7 =>
                    nb_bits := (6 downto 0 => '0') &
                               nb_bits(15 downto 7);                             
                when 8 =>
                    nb_bits := (7 downto 0 => '0') &
                               nb_bits(15 downto 8);                              
                when 9 =>
                    nb_bits := (8 downto 0 => '0') &
                               nb_bits(15 downto 9);                             
                when 10 =>
                    nb_bits := (9 downto 0 => '0') &
                               nb_bits(15 downto 10);                
                when 11 =>
                    nb_bits := (10 downto 0 => '0') &
                               nb_bits(15 downto 11);                               
                when 12 =>
                    nb_bits := (11 downto 0 => '0') &
                               nb_bits(15 downto 12);
                when 13 =>
                    nb_bits := (12 downto 0 => '0') &
                               nb_bits(15 downto 13); 
                when others =>
                    nb_bits := x"0000";                                                                
            end case;
            
            --nb_bits := (r_value_int - 1 downto 0 => '0') &
            --           nb_bits(15 downto r_value_int);
            
            Start_Buff <= '1';
            
            Nb_Bits_Buff <= nb_bits(7 downto 0);
            counter := counter + 1;
            
            case to_integer(unsigned(nb_bits)) is
                when 1 => 
                    Computed_State <= Start_Symbol + 
                                      ((0 downto 0 => '0') & Actual_State(15 downto 1));
                when 2 =>
                    Computed_State <= Start_Symbol +
                                      ((1 downto 0 => '0') & Actual_State(15 downto 2));
                when 3 =>
                    Computed_State <= Start_Symbol +
                                      ((2 downto 0 => '0') & Actual_State(15 downto 3));
                when 4 =>
                    Computed_State <= Start_Symbol +
                                      ((3 downto 0 => '0') & Actual_State(15 downto 4));
                when 5 =>   
                    Computed_State <= Start_Symbol +
                                      ((4 downto 0 => '0') & Actual_State(15 downto 5));
                when 6 =>
                    Computed_State <= Start_Symbol +
                                      ((5 downto 0 => '0') & Actual_State(15 downto 6));
                when 7 =>
                    Computed_State <= Start_Symbol +
                                      ((6 downto 0 => '0') & Actual_State(15 downto 7));
                when others =>
                    Computed_State <= Start_Symbol;
            end case;

                
           --Computed_State <= Start_Symbol + 
           --                  ((to_integer(unsigned(nb_bits)) - 1 downto 0 => '0') &
           --                  Actual_State(15 downto to_integer(unsigned(nb_bits))));
                                                                                       
            if(to_integer(unsigned(amount_bytes)) = counter) then
                Empty <= '1';
            end if;                                              
        else
            Empty <= '0';
            Start_Buff <= '0';
        end if;
        
                 
    end if;
end process;

main_process: process(current_state, data_in, start, new_symbol, ready_buff)
    variable counter : integer := 0;
    
    begin
        next_state <= current_state;
        
        case current_state is
            when IDLE =>
            
                end_data <= '0';
                counter := 0;
                init_buff <= '1';
                
                
                if(start = '1') then
                
                    end_data <= '0';
                    r_value_int <= to_integer(unsigned(r_value)) + 1;
                    Init_Buff <= '1';
                    next_state <= GET_SYMBOL;
                    
                end if;
            
            when GET_SYMBOL =>
            
                Init_Buff <= '0';
                Compute <= '1';
                
                Actual_State <= State;
                State_To_Buff <= State;
                                 
                --if(Empty = '1') then
                --    Compute <= '0';
                --    Empty_Buff <= '1';
                --    next_state <= SET_END_STATE;
                --else
                    next_state <= COMPUTE_NEXT_STATE;  
                --end if;               
                
                
            when COMPUTE_NEXT_STATE =>
                
                Compute <= '0';
                
                if(Empty = '1') then
                    Compute <= '1';
                    next_state <= WAIT_FOR_END_ENC;
                else
                    next_state <= GET_SYMBOL;
                end if;
            
            when WAIT_FOR_END_ENC =>
                
                 Compute <= '0';
                    
                if(Ready_Buff = '1') then
                    next_state <= SET_END_STATE;
                end if;
                       
            when SET_END_STATE =>
            State_To_Buff <= State;
                           
                 if(Ready_Buff = '1') then
                    Empty_Buff <= '0';       
                    
                    next_state <= WAIT_FOR_END;
                                                            
                 end if;
             
            when WAIT_FOR_END =>
            
                if(Ready_Buff = '1') then
                    next_state <= IDLE;
                    End_Data <= '1';
                end if;
        end case;
    end process;
end encode;
