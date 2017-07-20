----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2017 17:52:50
-- Design Name: 
-- Module Name: startRom - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity StartRom is
 Port   ( symbol : in STD_LOGIC_VECTOR (7 downto 0);
          clk: in STD_LOGIC;
          startValue : out STD_LOGIC_VECTOR (7 downto 0));
end StartRom;

architecture lookUp of StartRom is

begin

process(symbol, clk)
    begin
    
        if(rising_edge(clk)) then
            case symbol is
                when "00000000" => startValue <= "10000011"; 
                when "00000001" => startValue <= "10000101"; 
                when "00000010" => startValue <= "00000110"; 
                when others => NULL;  
            end case;
            
            end if;
            
    end process;


end lookUp;
