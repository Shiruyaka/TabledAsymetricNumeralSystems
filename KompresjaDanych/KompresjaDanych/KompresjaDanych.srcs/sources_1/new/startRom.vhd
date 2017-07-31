library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity startRom is
	Port ( symbol : in STD_LOGIC_VECTOR(0 to 15);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR(0 to 15));
end startRom;

architecture behavioral of startRom is

begin

	process(symbol, clk)
	begin

		if(rising_edge(clk)) then

			case symbol is
				when "0000000000000000" => result <= "1111111111111101";
				when "0000000000000001" => result <= "1111111111111011";
				when "0000000000000010" => result <= "0000000000000110";
				when others => NULL; 
			end case;
		end if;

	end process;

end behavioral;
