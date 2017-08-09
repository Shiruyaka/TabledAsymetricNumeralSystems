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
           
           computed_state : out STD_LOGIC_VECTOR(15 downto 0);
           
           state : in STD_LOGIC_VECTOR(15 downto 0);
           nb_bits : in STD_LOGIC_VECTOR(7 downto 0);
           
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
       Actual_State : STD_LOGIC_VECTOR(15 downto 0) := x"0000";

signal
       r_value_int: integer := 0;
  
type state_type is (IDLE, GET_SYMBOL, COMPUTE_NEXT_STATE, WAIT_FOR_END_ENC, SET_END_STATE, WAIT_FOR_END);

signal 
       current_state, next_state : state_type;

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
            
          
            
            Nb_Bits_Buff <= nb_bits(7 downto 0);
            counter := counter + 1;
            
                                                                                       
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
                    Init_Buff <= '1';
                    next_state <= GET_SYMBOL;
                    
                end if;
            
            when GET_SYMBOL =>
            
                Init_Buff <= '0';
                Compute <= '1';
                --Actual_State <= State;
                State_To_Buff <= state;
               
                next_state <= COMPUTE_NEXT_STATE;  
                
                
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
