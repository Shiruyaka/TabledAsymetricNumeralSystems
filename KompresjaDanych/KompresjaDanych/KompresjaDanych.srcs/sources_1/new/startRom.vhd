library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity startRom is
	Port ( symbol : in STD_LOGIC_VECTOR(0 to 7);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR(0 to 7));
end startRom;

architecture behavioral of startRom is

begin

	process(symbol, clk)
	begin

		if(rising_edge(clk)) then

			case symbol is
				when "00000000" => result <= "11111101";
				when "00000001" => result <= "11111011";
				when "00000010" => result <= "00000110";
				when others => NULL; 
			end case;
		end if;

	end process;

end behavioral;
