library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity symbolRom is
	Port ( symbol : in STD_LOGIC_VECTOR(0 to 15);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR(0 to 15));
end symbolRom;

architecture behavioral of symbolRom is

begin

	process(symbol, clk)
	begin

		if(rising_edge(clk)) then

			case symbol is
				when "0000000000100000" => result <= "0000000000010111";
				when "0000000000100001" => result <= "0000000000000100";
				when "0000000000100010" => result <= "0000000000001000";
				when "0000000000100011" => result <= "0000000000001111";
				when "0000000000100100" => result <= "0000000000010101";
				when "0000000000100101" => result <= "0000000000000001";
				when "0000000000100110" => result <= "0000000000000110";
				when "0000000000100111" => result <= "0000000000001100";
				when "0000000000101000" => result <= "0000000000010001";
				when "0000000000101001" => result <= "0000000000010111";
				when "0000000000101010" => result <= "0000000000000011";
				when "0000000000101011" => result <= "0000000000001000";
				when "0000000000101100" => result <= "0000000000001110";
				when "0000000000101101" => result <= "0000000000010100";
				when "0000000000101110" => result <= "0000000000000001";
				when "0000000000101111" => result <= "0000000000000101";
				when "0000000000110000" => result <= "0000000000001010";
				when "0000000000110001" => result <= "0000000000010000";
				when "0000000000110010" => result <= "0000000000010110";
				when "0000000000110011" => result <= "0000000000000010";
				when "0000000000110100" => result <= "0000000000000111";
				when "0000000000110101" => result <= "0000000000001101";
				when "0000000000110110" => result <= "0000000000010011";
				when "0000000000110111" => result <= "0000000000000000";
				when "0000000000111000" => result <= "0000000000000100";
				when "0000000000111001" => result <= "0000000000001001";
				when "0000000000111010" => result <= "0000000000001111";
				when "0000000000111011" => result <= "0000000000010101";
				when "0000000000111100" => result <= "0000000000000010";
				when "0000000000111101" => result <= "0000000000000110";
				when "0000000000111110" => result <= "0000000000001101";
				when "0000000000111111" => result <= "0000000000010010";
				when others => NULL; 
			end case;
		end if;

	end process;

end behavioral;