library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity nbBitsRom is
	Port ( symbol : in STD_LOGIC_VECTOR (7 downto 0);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR (7 downto 0));
end nbBitsRom;

architecture behavioral of nbBitsRom is

begin

	process(symbol, clk)
	begin

		if(rising_edge(clk)) then

			case symbol is
				when "00000000" => result <= "00000011";
				when "00000001" => result <= "00000010";
				when "00000010" => result <= "00000001";
				when "00000011" => result <= "00000001";
				when "00000100" => result <= "00000001";
				when "00000101" => result <= "00000010";
				when "00000110" => result <= "00000010";
				when "00000111" => result <= "00000010";
				when "00001000" => result <= "00000001";
				when "00001001" => result <= "00000001";
				when "00001010" => result <= "00000010";
				when "00001011" => result <= "00000001";
				when "00001100" => result <= "00000001";
				when "00001101" => result <= "00000001";
				when "00001110" => result <= "00000001";
				when "00001111" => result <= "00000001";
				when others => NULL; 
			end case;
		end if;

	end process;

end behavioral;
