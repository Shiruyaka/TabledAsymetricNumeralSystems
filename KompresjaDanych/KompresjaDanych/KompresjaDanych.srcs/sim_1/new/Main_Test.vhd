----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.07.2017 10:22:17
-- Design Name: 
-- Module Name: Main_Test - test
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

entity Main_Test is
--  Port ( );
end Main_Test;

architecture test of Main_Test is

component Main is
 Port ( 
          init : in STD_LOGIC;
          start : in STD_LOGIC;
          data_in : in STD_LOGIC_VECTOR (0 to 7);
          ready_to_send: out STD_LOGIC;
          clk : in STD_LOGIC;
          stream : out STD_LOGIC_VECTOR (0 to 7)
        );
end component;

signal Init, Start, Clk, Ready: STD_LOGIC;
signal Data_In, Stream : STD_LOGIC_VECTOR(0 to 7);

begin
main_mapping: Main
port map(
         init => Init,
         start => Start,
         clk => Clk,
         stream => Stream,
         ready_to_send => Ready,
         data_in => Data_In  
        );    

clock_process: process
begin
    Clk <= '1';
    wait for 5 ns;
    Clk <= '0';
    wait for 5 ns;        
end process;

main_test: process
begin
    wait until rising_edge(Clk);
Init <= '1';
    wait until rising_edge(Clk);
Init <= '0';
Start <= '1';
    wait until rising_edge(Clk);
Start <= '0';
data_in <= "00001111";
    wait until rising_edge(Clk);
data_in <= "00000100";
    wait until rising_edge(Clk);
data_in <= "00010000";

    wait until rising_edge(Clk);
data_in <= "00000001";
    wait until rising_edge(Clk);
data_in <= "00000011";
    wait until rising_edge(Clk);
data_in <= "00000010";
    wait until rising_edge(Clk);
data_in <= "00000011";
    wait until rising_edge(Clk);
data_in <= "00000011";
    wait until rising_edge(Clk);
data_in <= "00000010";
    wait until rising_edge(Clk);
data_in <= "00000001";
    wait until rising_edge(Clk);
data_in <= "00000010";
    wait until rising_edge(Clk);
data_in <= "00000010";
    wait until rising_edge(Clk);
data_in <= "00000010";
    wait until rising_edge(Clk);
data_in <= "00000010";
    wait until rising_edge(Clk);
data_in <= "00000010";
    wait until rising_edge(Clk);
data_in <= "00000011";
    wait until rising_edge(Clk);
data_in <= "00000011";
    wait until rising_edge(Clk);
data_in <= "00000011";
    wait;    
end process;

end test;
