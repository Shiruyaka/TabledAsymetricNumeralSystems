----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2017 22:50:13
-- Design Name: 
-- Module Name: nbBits_rom - Behavioral
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

entity NbRom is
    Port ( symbol : in STD_LOGIC_VECTOR (7 downto 0);
           clk: in STD_LOGIC;
           nb : out STD_LOGIC_VECTOR (7 downto 0));
end NbRom;

architecture lookUp of NbRom is

begin

    process(symbol, CLK)
    begin
    
        if(rising_edge(clk)) then
    
            case symbol is
                when "00000001" => nb <= "01001000"; 
                when "00000010" => nb <= "00010000"; 
                when "00000011" => nb <= "00101100";  
                when others => NULL;  
            end case;
     
         end if;
        
    end process;


end lookUp;
