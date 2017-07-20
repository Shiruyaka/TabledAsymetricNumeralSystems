----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2017 21:20:41
-- Design Name: 
-- Module Name: serializator - sending_data
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity serializator is
 GENERIC(length : integer);
    Port ( 
           GCLK : in STD_LOGIC;
           BTNC : in STD_LOGIC; --start
           BTNL : in STD_LOGIC; --reset
           DataIn : in STD_LOGIC_VECTOR (length - 1 downto 0);
           DataOut : out STD_LOGIC;
           Ready : out STD_LOGIC
          );
end serializator;

architecture sending_data of serializator is
    type state_type is (IDLE, IN_PROGRESS);
    signal current_state, next_state : state_type;
    signal counter: integer:= 0;
    signal rtosend: std_logic:='0';
    
begin

state_machine: process (GCLK)
begin
    if(rising_edge(GCLK))
    then
        if(BTNL = '1') then
            current_state <= IDLE;
        else
            current_state <= next_state;
        end if;
    end if;
end process;

count: process (GCLK)
begin
    if(rising_edge(GCLK))
    then
        if(current_state = IN_PROGRESS)
        then
            Ready <= '0';
            counter <= counter + 1;
        elsif(current_state = IDLE) then
            Ready <= NOT rtosend;
            counter <= 0;      
        else
            counter <= 0;               
        end if;
    end if;
end process;

process (current_state, counter, BTNL, BTNC)
begin
    next_state <= current_state;
    
    case current_state is
        when IDLE =>
             rtosend <= '0';
             
              if(BTNC = '1') then
                next_state <= IN_PROGRESS;
                rtosend <= '1';
                              
              end if;
             
        when IN_PROGRESS =>
            rtosend <= '1';
                     
            if(counter >= length - 2) then
                next_state <= IDLE;
            end if;
            
     end case;
end process;

DataOut <= DataIn(length - counter - 1);

end sending_data;
