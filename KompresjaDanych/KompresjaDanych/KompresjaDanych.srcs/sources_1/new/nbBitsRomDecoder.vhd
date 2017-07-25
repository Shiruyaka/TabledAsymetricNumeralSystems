library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity nbBitsRom is
	Port ( symbol : in STD_LOGIC_VECTOR(0 to 7);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR(0 to 7));
end nbBitsRom;

architecture behavioral of nbBitsRom is

begin

	process(symbol, clk)
	begin

		if(rising_edge(clk)) then

			case symbol is
				when "00010000" => result <= "00000011";
				when "00010001" => result <= "00000010";
				when "00010010" => result <= "00000001";
				when "00010011" => result <= "00000001";
				when "00010100" => result <= "00000001";
				when "00010101" => result <= "00000010";
				when "00010110" => result <= "00000010";
				when "00010111" => result <= "00000010";
				when "00011000" => result <= "00000001";
				when "00011001" => result <= "00000001";
				when "00011010" => result <= "00000010";
				when "00011011" => result <= "00000001";
				when "00011100" => result <= "00000001";
				when "00011101" => result <= "00000001";
				when "00011110" => result <= "00000001";
				when "00011111" => result <= "00000001";
				when others => NULL; 
			end case;
		end if;

	end process;

end behavioral;
