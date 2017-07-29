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
use STD.textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder_Test is
--  Port ( );
end Decoder_Test;

architecture dec_test of Decoder_Test is

signal Init, Start, Clk, Ready, New_Symbol, End_Data, End_Decoded, Produced_Symbol : STD_LOGIC;
signal Stream, Data_In : STD_LOGIC_VECTOR(7 downto 0);

component Decoder is
    Port (
            init : in STD_LOGIC;
            start : in STD_LOGIC;
            clk : in STD_LOGIC;
                       
            stream : out STD_LOGIC_VECTOR(7 downto 0);
            ready : out STD_LOGIC;
            end_decoded : out STD_LOGIC;
            produced_symbol : out STD_LOGIC;
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
                end_data =>End_Data,
                end_decoded => End_Decoded,
                produced_symbol => Produced_Symbol
            );

clock_process: process
begin
      Clk <= '1';
      wait for 5 ns;
      Clk <= '0';
      wait for 5 ns;        
end process;

read_and_decode:process
file read_file:text open read_mode is "C:\Users\Ola\Desktop\compression_tests\to_decode.txt";
variable line_enum : line;
variable line_content: string(1 to 8);
variable byte: std_logic_vector(1 to 8);

begin 
    Init <= '1';
    New_Symbol <= '0';
    End_data <= '0';
        wait until rising_edge(Clk);
    Init <= '0';
    Start <= '1';
        wait until rising_edge(Clk);
    Start <= '0';
    
    while not endfile(read_file) loop
        
        readline(read_file, line_enum);
        read(line_enum, line_content);
        
         for i in line_content'range loop
               
           if(line_content(i) = '1')then
              byte(i) := '1';
            else
              byte(i) := '0'; 
            end if;
               
         end loop;
       
       wait until Ready = '1' and rising_edge(Clk);
       
       data_in <= byte;
       New_Symbol <= '1';
       
       wait until rising_edge(Clk);
       New_Symbol <= '0';    
    
    end loop;
    
    End_Data <= '1';
    file_close(read_file);
    
    wait;
    
end process;


write_decoded_symbol:process(Stream, End_Decoded, Produced_Symbol)
file write_to_file: text open write_mode is "C:\Users\Ola\Desktop\compression_tests\decode_out.txt";
variable line_to_file : line;
variable line_content: string(1 to 8);
variable i : integer := 0;

begin 
   
   if(Produced_Symbol = '1' and End_Decoded = '0') then      
          for i in 0 to 7 loop
               
             if(Stream(i)= '1') then
                 line_content(8 - i) := '1';
             else
                 line_content(8 - i) := '0';
             end if;
             
          end loop;  
           
           
           write(line_to_file, string'(line_content)); 
           writeline(write_to_file, line_to_file);            
   end if;
       
   if(End_Decoded = '1') then      
       file_close(write_to_file);
   end if; 
end process;
end dec_test;
