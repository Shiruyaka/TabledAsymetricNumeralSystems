library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity encodingTableRom is
	Port ( symbol : in STD_LOGIC_VECTOR(0 to 15);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR(0 to 15));
end encodingTableRom;

architecture behavioral of encodingTableRom is

begin

	process(symbol, clk)
	begin

		if(rising_edge(clk)) then

			case symbol is
				when "0000000000000000" => result <= "0000000000010000";
				when "0000000000000001" => result <= "0000000000011010";
				when "0000000000000010" => result <= "0000000000011101";
				when "0000000000000011" => result <= "0000000000010001";
				when "0000000000000100" => result <= "0000000000010010";
				when "0000000000000101" => result <= "0000000000010100";
				when "0000000000000110" => result <= "0000000000010101";
				when "0000000000000111" => result <= "0000000000010111";
				when "0000000000001000" => result <= "0000000000011000";
				when "0000000000001001" => result <= "0000000000011011";
				when "0000000000001010" => result <= "0000000000011110";
				when "0000000000001011" => result <= "0000000000010011";
				when "0000000000001100" => result <= "0000000000010110";
				when "0000000000001101" => result <= "0000000000011001";
				when "0000000000001110" => result <= "0000000000011100";
				when "0000000000001111" => result <= "0000000000011111";
				when others => NULL; 
			end case;
		end if;

	end process;

end behavioral;
