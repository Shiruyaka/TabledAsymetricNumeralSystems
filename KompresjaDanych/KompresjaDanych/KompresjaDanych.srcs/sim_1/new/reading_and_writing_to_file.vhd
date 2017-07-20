----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2017 21:24:48
-- Design Name: 
-- Module Name: reading_and_writing_to_file - read_nad_write
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reading_and_writing_to_file is
--  Port ( );
end reading_and_writing_to_file;

architecture read_and_write of reading_and_writing_to_file is

component serializator is
 generic( length : integer);
 port(     
           GCLK : in STD_LOGIC;
           BTNC : in STD_LOGIC;
           BTNL : in STD_LOGIC;
           DataIn : in STD_LOGIC_VECTOR (7 downto 0);
           DataOut : out STD_LOGIC;
           Ready : out STD_LOGIC
      );
 end component;
 
signal gclk, btnc, btnl, rdy, dataout: STD_LOGIC;
signal datain: STD_LOGIC_VECTOR (7 downto 0);
signal  bin_value : STD_LOGIC_VECTOR (7 downto 0):="00000000";

begin

test: serializator 
Generic map(length => 8)
Port map (
            GCLK    => gclk,
            BTNC    => btnc,
            BTNL    => btnl,
            DataIn  => datain,
            DataOut => dataout,
            Ready   => rdy
         );

clock_process: process
begin
    gclk <= '1';
    wait for 5 ns;
    gclk <= '0';
    wait for 5 ns;        
end process;


readAndSend: process

file read_file: text;


variable line_enum : line;
variable line_content: string(1 to 8);


variable j: integer := 0;
variable char: character:='0';

begin

    btnl <= '1';
    wait for 10 ns;
    btnl   <= '0';
    
    file_open(read_file, "C:\Users\tomas\Desktop\test.txt", READ_MODE);
 
    while not endfile(read_file) loop
    
        readline(read_file, line_enum);
        read(line_enum, line_content);
        
        for j in 1 to 8 loop
            char := line_content(j);
            if(char = '0') then
                bin_value(8 - j) <= '0';
            else
                bin_value(8 - j) <= '1';
            end if;
        end loop;
        
        btnc <= '1';
        wait for 10ns;
        btnc <= '0';
                 
        wait until rdy = '1';
    end loop;
    
    file_close(read_file);  
    wait;
    
end process;

write: process(rdy, gclk)
file write_file: text;
variable i : integer:= 1;

variable line_to_file : line;
variable line_str: string(1 to 8);

begin
    
    file_open(write_file, "C:\Users\tomas\Desktop\out.txt", WRITE_MODE);
    
    if(rdy = '0') then
    
        while i <= 8 loop
            if(gclk = '1')then
            
               if(dataout = '1')then
                  line_str(i) := '1';
               else
                  line_str(i) := '0';
               end if;
                         
                 i := i + 1; 
             end if;
        end loop;

    end if;
    write(line_to_file, string'(line_str));
    --writeline(write_file, line_to_file);
    file_close(write_file);      
end process;

datain <= bin_value;


end read_and_write;
