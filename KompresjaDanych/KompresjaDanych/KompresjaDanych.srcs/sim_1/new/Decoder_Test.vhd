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

signal Init, Start, Clk, Ready, New_Symbol, End_Data : STD_LOGIC;
signal Stream, Data_In : STD_LOGIC_VECTOR(7 downto 0);

component Decoder is
    Port (
            init : in STD_LOGIC;
            start : in STD_LOGIC;
            clk : in STD_LOGIC;
                       
            stream : out STD_LOGIC_VECTOR(7 downto 0);
            ready : out STD_LOGIC;
            
            new_symbol : in STD_LOGIC;
            end_data : in STD_LOGIC;
            data_in : in STD_LOGIC_VECTOR(7 downto 0)
          );
end component;


begin

test: Decoder
    port map(
                init => Init,
                start => Start,
                clk => Clk,
                stream => Stream,
                ready => Ready,
                new_symbol => New_Symbol,
                data_in => Data_In,
                end_data =>End_Data
            );

clock_process: process
begin
      Clk <= '1';
      wait for 5 ns;
      Clk <= '0';
      wait for 5 ns;        
end process;

test_decoder: process
begin
    Init <= '1';
    New_Symbol <= '0';
    End_data <= '0';
    wait until rising_edge(Clk);
    Init <= '0';
    Start <= '1';
    wait until rising_edge(Clk);
    Start <= '0';
    Data_In <= "00000101";
    wait until rising_edge(Clk);
    Data_In <= "00000010";
    wait until rising_edge(Clk);
    Data_In <= "01000010";
    wait until rising_edge(Clk);
    Data_In <= "10111010";
    wait until rising_edge(Clk) and Ready = '1';
    
    New_Symbol <= '1';
    Data_In <= "11110000";
    
    wait until rising_edge(Clk) and Ready = '1';
    Data_In <= "10101010";
    
    wait until rising_edge(Clk) and Ready = '1';
    Data_In <= "01010101";
    
    wait until rising_edge(Clk);
    End_Data <= '1';
    
    wait;
    
end process;

end Behavioral;
