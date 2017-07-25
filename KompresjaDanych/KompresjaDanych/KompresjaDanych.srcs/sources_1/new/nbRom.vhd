library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity nbRom is
	Port ( symbol : in STD_LOGIC_VECTOR(0 to 7);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR(0 to 7));
end nbRom;

architecture behavioral of nbRom is

begin

	process(symbol, clk)
	begin

		if(rising_edge(clk)) then

			case symbol is
				when "00000000" => result <= "01001000";
				when "00000001" => result <= "00010000";
				when "00000010" => result <= "00101100";
				when others => NULL; 
			end case;
		end if;

	end process;

end behavioral;
