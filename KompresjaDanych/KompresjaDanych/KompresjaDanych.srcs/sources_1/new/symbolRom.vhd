----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2017 22:42:10
-- Design Name: 
-- Module Name: sym_rom - Behavioral
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

entity SymbolRom is
    Port ( state : in STD_LOGIC_VECTOR (7 downto 0);
           clk: in STD_LOGIC;
           symbol : out STD_LOGIC_VECTOR (1 downto 0));
end SymbolRom;

architecture lookUp of SymbolRom is
begin

    process(state, clk)
    begin
    
        if(rising_edge(clk)) then
            case state is
                when "00010000" => symbol <= "00000001"; 
                when "00010001" => symbol <= "00000011"; 
                when "00010010" => symbol <= "00000010"; 
                when "00010011" => symbol <= "00000010";
                 
                when "00010100" => symbol <= "00000010";   
                when "00010101" => symbol <= "00000001"; 
                when "00010110" => symbol <= "00000011";
                when "00010111" => symbol <= "00000011";
                
                when "00011000" => symbol <= "00000010"; 
                when "00011001" => symbol <= "00000010"; 
                when "00011010" => symbol <= "00000001";
                when "00011011" => symbol <= "00000011";
                 
                when "00011100" => symbol <= "00000011"; 
                when "00011101" => symbol <= "00000010"; 
                when "00011110" => symbol <= "00000010"; 
                when "00011111" => symbol <= "00000010";
                
                when others => NULL;  
            end case;
            
            end if;
            
    end process;


end lookUp;
