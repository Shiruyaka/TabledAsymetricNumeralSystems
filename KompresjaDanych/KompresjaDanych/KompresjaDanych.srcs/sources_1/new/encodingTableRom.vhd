library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity encodingTableRom is
	Port ( symbol : in STD_LOGIC_VECTOR(0 to 7);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR(0 to 7));
end encodingTableRom;

architecture behavioral of encodingTableRom is

begin

	process(symbol, clk)
	begin

		if(rising_edge(clk)) then

			case symbol is
				when "00000000" => result <= "00010000";
				when "00000001" => result <= "00010101";
				when "00000010" => result <= "00011010";
				when "00000011" => result <= "00010010";
				when "00000100" => result <= "00010011";
				when "00000101" => result <= "00010100";
				when "00000110" => result <= "00011000";
				when "00000111" => result <= "00011001";
				when "00001000" => result <= "00011101";
				when "00001001" => result <= "00011110";
				when "00001010" => result <= "00011111";
				when "00001011" => result <= "00010001";
				when "00001100" => result <= "00010110";
				when "00001101" => result <= "00010111";
				when "00001110" => result <= "00011011";
				when "00001111" => result <= "00011100";
				when others => result <= x"00"; 
			end case;
		end if;

	end process;

end behavioral;
