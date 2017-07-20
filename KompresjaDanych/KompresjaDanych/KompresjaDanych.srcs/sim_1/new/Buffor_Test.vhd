----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2017 00:11:51
-- Design Name: 
-- Module Name: Buffor_Test - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Buffor_Test is
--  Port ( );
end Buffor_Test;

architecture buff_test of Buffor_Test is

component Buffor
port(     
           init : in STD_LOGIC;
           start : in STD_LOGIC;
           ready : out STD_LOGIC;
           clk : in STD_LOGIC;
           
           nbBits : in STD_LOGIC_VECTOR(3 downto 0);
           stream : out STD_LOGIC_VECTOR(7 downto 0);
           x : in STD_LOGIC_VECTOR(7 downto 0);
           end_state : in STD_LOGIC_VECTOR(7 downto 0);
           end_data : in STD_LOGIC
      );
 end component;
 
signal Clk, Init, Start : STD_LOGIC;
signal NbBits : STD_LOGIC_VECTOR(3 downto 0);
signal X : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal Stream, End_state : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal rdy, End_data : STD_LOGIC;
  
begin

test: Buffor
Port map(
            init => Init,
            start => Start,
            clk => Clk,
            nbBits => NbBits,
            x => X,
            stream => Stream,
            ready => rdy,
            end_data => End_data,
            end_state => End_state
        );


clock_process: process
begin
    Clk <= '1';
    wait for 5 ns;
    Clk <= '0';
    wait for 5 ns;        
end process;

sending_data_to_buff: process
begin
    Init <= '1';
    End_data <= '0';
    
    wait for 5 ns;
    Init <= '0';
    
    X <= "10010111";
    NbBits <= "0011";
    
    Start <= '1';
    wait for 5 ns;
    Start <= '0';
    
    wait until rdy = '1';
    
    X <= "11111011";
    NbBits <= "0100";
            
    Start <= '1';
    wait for 10 ns;
    Start <= '0';
        
    wait until rdy = '1';
      
    X <= "11111011";
    NbBits <= "0100";           
    
    Start <= '1';
    wait for 10 ns;
    Start <= '0';
    
    wait until rdy = '1';
   
    X <= "10110111";
    NbBits <= "0011";
    End_data <= '1';
    End_state <= "00000001";
    
    Start <= '1';
    wait for 10 ns;
    Start <= '0';
             
    wait until rdy = '1';
    
    wait;
                
end process;


end buff_test;
