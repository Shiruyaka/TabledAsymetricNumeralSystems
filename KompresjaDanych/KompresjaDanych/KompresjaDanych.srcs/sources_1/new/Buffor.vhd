----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2017 17:48:54
-- Design Name: 
-- Module Name: Buffor - use_bits
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
USE IEEE.NUMERIC_STD.ALL; 
USE IEEE.NUMERIC_STD;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Buffor is
    Port ( 
           init : in STD_LOGIC;
           start : in STD_LOGIC;
           ready : out STD_LOGIC;
           clk : in STD_LOGIC;
           end_data : in STD_LOGIC;
           end_state : in STD_LOGIC_VECTOR(7 downto 0);
           
           nbBits : in STD_LOGIC_VECTOR(3 downto 0); -- change from integer 
           stream : out STD_LOGIC_VECTOR(7 downto 0) := "00000000";
           x : in STD_LOGIC_VECTOR(7 downto 0)
          );
end Buffor;

architecture use_bits of Buffor is

type state_type is (IDLE, IN_PROGRESS, CHECKING_BUFFOR, EMPTY_BUFF1, EMPTY_BUFF2, OUT_END_STATE);
signal current_state, next_state : state_type;

signal buffor: std_logic_vector(31 downto 0):= "00000000000000000000000000000000";

begin
    
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

    main_process: process(current_state, start)
    
    variable bits: std_logic_vector(7 downto 0);
    variable bits_shifted: std_logic_vector(31 downto 0) := x"00000000";
    variable counter: integer:= 0;
    variable mask: std_logic_vector(7 downto 0);
    variable nbBitsInt: integer;
    
    begin
        next_state <= current_state;
        
            case current_state is 
 
                when IDLE =>
                    
                    ready <= '0';
                    
                    if(start = '1')then
                        next_state <= IN_PROGRESS;
                    end if;
 
                when IN_PROGRESS =>
                    nbBitsInt := to_integer(unsigned(nbBits));
                                
                    mask := (
                             nbBitsInt - 2 downto 0 => '1',
                             others => '0'
                             );
                             
                    bits := x and mask;
                    bits_shifted :=  (23 - counter downto 0 => '0') & bits & (counter - 1 downto 0 => '0');                                           
                    
                    buffor <= buffor or bits_shifted;     
                    counter := counter + nbBitsInt;
                    
                    next_state <= CHECKING_BUFFOR;
             
                when CHECKING_BUFFOR =>
                
                    if(counter >= 8) then
                        
                        --stream <= buffor(counter - 1 downto counter - 8);
                        stream <= buffor(31 downto 24); 
                        buffor <= (7 downto 0 => '0') & buffor(24 downto 0);
                        counter := counter - 8;
                
                    end if;
                    
                    if(end_data = '1') then
                       
                       next_state <= EMPTY_BUFF1;
                    else
                       next_state <= IDLE;               
                    end if;
                    
               when EMPTY_BUFF1 =>
               
                   if(counter <= 5) then
                    stream <= std_logic_vector(to_unsigned(counter, 3)) & (4 - counter downto 0 => '0') & buffor(counter - 1 downto 0); 
                    next_state <= OUT_END_STATE;                   
                   else
                    stream <= std_logic_vector(to_unsigned(5, 3)) & buffor(4 downto 0);
                    buffor <= (4 downto 0 => '0') & buffor(31 downto 5);
                    counter := counter - 5;
                    next_state <= EMPTY_BUFF2;
                   end if;
                  
               when EMPTY_BUFF2 =>
                    stream <= std_logic_vector(to_unsigned(counter, 3)) & (4 - counter downto 0 => '0') & buffor(counter - 1 downto 0);
                    next_state <= OUT_END_STATE;
                    
               when OUT_END_STATE =>
                    stream <= end_state;
                    ready <= '1';             
                    next_state <= IDLE;
               
      end case;
            
    end process;


end use_bits;
