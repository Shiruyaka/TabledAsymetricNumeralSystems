----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.07.2017 00:10:11
-- Design Name: 
-- Module Name: Decoder_Test - Behavioral
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

entity Decoder_Test is
--  Port ( );
end Decoder_Test;

architecture Behavioral of Decoder_Test is
signal Init, Start, Clk, Ready, New_Symbol : STD_LOGIC;
signal Stream, Data_In, 
component Decoder is
    Port (
            init : in STD_LOGIC;
            start : in STD_LOGIC;
            clk : in STD_LOGIC;
                       
            stream : out STD_LOGIC_VECTOR(0 to 7);
            ready : out STD_LOGIC;
            
            new_symbol : in STD_LOGIC;
            data_in : in STD_LOGIC_VECTOR(0 to 7)
          );
end component;


begin

test: Decoder
    port map(
                init <= Init,
                start <= Start,
                clk <= Clk,
                stream <= Stream,
                ready <= Ready,
                new_symbol <= New_Symbol,
                data_in <= Data_In
            );

clock_process: process
begin
      Clk <= '1';
      wait for 5 ns;
      Clk <= '0';
      wait for 5 ns;        
end process;

est_decoder: process(start, new_symbol, current_state)
    
end process;

end Behavioral;
