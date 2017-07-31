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
				when "0000000000010000" => result <= "0000000000000000";
				when "0000000000010001" => result <= "0000000000000001";
				when "0000000000010010" => result <= "0000000000000001";
				when "0000000000010011" => result <= "0000000000000010";
				when "0000000000010100" => result <= "0000000000000001";
				when "0000000000010101" => result <= "0000000000000001";
				when "0000000000010110" => result <= "0000000000000010";
				when "0000000000010111" => result <= "0000000000000001";
				when "0000000000011000" => result <= "0000000000000001";
				when "0000000000011001" => result <= "0000000000000010";
				when "0000000000011010" => result <= "0000000000000000";
				when "0000000000011011" => result <= "0000000000000001";
				when "0000000000011100" => result <= "0000000000000010";
				when "0000000000011101" => result <= "0000000000000000";
				when "0000000000011110" => result <= "0000000000000001";
				when "0000000000011111" => result <= "0000000000000010";
				when others => NULL; 
			end case;
		end if;

	end process;

end behavioral;
