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
use STD.textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

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
        new_symbol : in STD_LOGIC;
        produced_symbol : out STD_LOGIC;
        end_data : out STD_LOGIC;
        
        data_in : in STD_LOGIC_VECTOR (15 downto 0);
        data_out : out STD_LOGIC_VECTOR (15 downto 0);                    
        
        amount_bytes : in STD_LOGIC_VECTOR(31 downto 0);
        r_value : in STD_LOGIC_VECTOR(7 downto 0)

);
end component;

signal Init, Start, Ready, Clk, New_Symbol, Produced_Symbol, End_Data : STD_LOGIC;
signal R_Value : STD_LOGIC_VECTOR(7 downto 0);
signal Data_Out, Symbol: STD_LOGIC_VECTOR(15 downto 0);
signal Amount_Bytes : STD_LOGIC_VECTOR(31 downto 0);

begin

test: Encoder
    Port map(
                init => Init,
                start => Start,
                ready => Ready,
                clk => Clk,
                data_in => Symbol,
                data_out => Data_out,
                new_symbol => New_symbol,
                produced_symbol => Produced_Symbol,
                end_data => End_Data,
                r_value => R_Value,
                amount_bytes => Amount_Bytes
            );

clock_process: process
begin
    Clk <= '1';
    wait for 5 ns;
    Clk <= '0';
    wait for 5 ns;        
end process;

read_and_encode: process

    file read_file: text;
    variable line_enum : line;
    variable line_content: string(1 to 8);
    variable symbols: string(1 to 16);
    variable amount_bytes_str: string(1 to 32);
    
    variable medium_byte: std_logic_vector(1 to 16);
    variable large_byte: std_logic_vector(1 to 32);
    variable byte: std_logic_vector(1 to 8);
    
begin
    
  file_open(read_file, "C:\Users\Ola\Desktop\compression_tests\to_encode_test.txt", READ_MODE);
   
  Init <= '1';
  New_symbol <= '0';

  readline(read_file, line_enum);
  read(line_enum, line_content);
    
  for i in line_content'range loop
        
      if(line_content(i) = '1')then
          byte(i) := '1';
      else
          byte(i) := '0'; 
      end if;
        
  end loop;

  R_Value <= byte;
  
  readline(read_file, line_enum);
  read(line_enum, amount_bytes_str);
      
    for i in amount_bytes_str'range loop
          
        if(amount_bytes_str(i) = '1')then
            large_byte(i) := '1';
        else
            large_byte(i) := '0'; 
        end if;
          
    end loop;
    
  Amount_Bytes <= large_byte;
  
  wait until rising_edge(Clk);
  Init <= '0';
 
  Start <= '1';
  wait until rising_edge(Clk);
  Start <= '0';
    
  while not endfile(read_file) loop
    
    readline(read_file, line_enum);
    read(line_enum, symbols);
    
    for i in symbols'range loop
        
        if(symbols(i) = '1')then
            medium_byte(i) := '1';
        else
            medium_byte(i) := '0'; 
        end if;
        
    end loop;
        
    wait until rising_edge(Clk) and Ready = '1';
    
    New_Symbol <= '1';
    Symbol <= medium_byte;
    
    wait until rising_edge(Clk);

    New_Symbol <= '0';

  end loop;
  
  New_Symbol <= '0';
  wait;
end process;

write_encoded_data: process

file write_file: text open write_mode is "C:\Users\Ola\Desktop\compression_tests\encode_out_test.txt";
variable line_to_file : line;
variable line_str: string(1 to 16);
variable line_content: string(1 to 16);
variable i : integer := 0;

begin
    wait until rising_edge(Clk);
    
        if(Produced_Symbol = '1') then      
            for i in 0 to 15 loop
                
                if(Data_Out(i)= '1') then
                    line_content(16 - i) := '1';
                else
                    line_content(16 - i) := '0';
                end if;
              
            end loop;  
            
            write(line_to_file, string'(line_content)); 
            writeline(write_file, line_to_file);            
        end if;
        
        
        if(End_Data = '1') then     
           file_close(write_file);
        end if;
    
end process;
end enc_test;
