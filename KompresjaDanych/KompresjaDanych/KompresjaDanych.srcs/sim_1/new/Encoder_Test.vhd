----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.05.2017 23:21:37
-- Design Name: 
-- Module Name: Encoder_Test - test
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

entity Encoder_Test is
--  Port ( );
end Encoder_Test;

architecture enc_test of Encoder_Test is

component Encoder
port(
        init : in STD_LOGIC; -- reset
        start : in STD_LOGIC;
        ready : out STD_LOGIC;
        clk : in STD_LOGIC;
      
        symbol : in STD_LOGIC_VECTOR (7 downto 0);
        data_out : out STD_LOGIC_VECTOR (7 downto 0);                    
        new_symbol : in STD_LOGIC
);
end component;

signal Init, Start, Ready, Clk, New_Symbol : STD_LOGIC;
signal Symbol, Data_Out : STD_LOGIC_VECTOR(7 downto 0);

begin

test: Encoder
    Port map(
                init => Init,
                start => Start,
                ready => Ready,
                clk => Clk,
                symbol => Symbol,
                data_out => Data_out,
                new_symbol => New_symbol
            );

clock_process: process
begin
    Clk <= '1';
    wait for 5 ns;
    Clk <= '0';
    wait for 5 ns;        
end process;

test_encoder: process
begin

    Init <= '1';
    wait until rising_edge(Clk);
    Init <= '0';
    Start <= '1';
    wait until rising_edge(Clk);
    Start <= '1';
    symbol <= "00010000";
    wait until rising_edge(Clk);
    symbol <= "00000100";
    wait until rising_edge(Clk);
    symbol <= "00010000";
    
    
    wait until rising_edge(Clk);
    
    New_symbol <= '0';
    
    wait until Ready = '1' and rising_edge(Clk);
    
    Start <= '0';
    New_symbol <= '1';
    Symbol <= "00000001";
    
    wait until rising_edge(Clk);
    New_symbol <= '0'; 
    
    wait until Ready = '1' and rising_edge(Clk);
    
    New_symbol <= '1';
    Symbol <= "00000011";
    
    wait until rising_edge(Clk);
    New_symbol <= '0';
    
    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000010";
    
    wait until rising_edge(Clk);
    New_symbol <= '0';
    
    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000011";
    
    wait until rising_edge(Clk);
    New_symbol <= '0';
        
    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000011";
    
    wait until rising_edge(Clk);
    New_symbol <= '0';    
    
    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000010";
        
    wait until rising_edge(Clk);
    New_symbol <= '0';    
    
    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000001";
        
    wait until rising_edge(Clk);
    New_symbol <= '0';    

    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000010";
    
    wait until rising_edge(Clk);
    New_symbol <= '0';    
    
    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000010";
    
    wait until rising_edge(Clk);
    New_symbol <= '0'; 
 
    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000010";
    
    wait until rising_edge(Clk);
    New_symbol <= '0'; 
    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000010";
    
    wait until rising_edge(Clk);
    New_symbol <= '0';
    
    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000010";
    
    wait until rising_edge(Clk);
    New_symbol <= '0';     
   
    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000011";
    
    wait until rising_edge(Clk);
    New_symbol <= '0'; 
    
    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000011";
    
    wait until rising_edge(Clk);
    New_symbol <= '0';
    
    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000011";
    
    wait until Ready = '1' and rising_edge(Clk);
    New_symbol <= '1';
    Symbol <= "00000011";
        
    wait until rising_edge(Clk);
    New_symbol <= '0';   
    wait;
end process;


end enc_test;
