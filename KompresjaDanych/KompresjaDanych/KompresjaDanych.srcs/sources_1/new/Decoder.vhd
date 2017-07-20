----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.07.2017 22:45:02
-- Design Name: 
-- Module Name: Decoder - decode
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

entity Decoder is
    Port (
            init : in STD_LOGIC;
            start : in STD_LOGIC;
            clk : in STD_LOGIC;
                       
            stream : out STD_LOGIC_VECTOR(0 to 7);
            ready : out STD_LOGIC;
            
            new_symbol : in STD_LOGIC;
            data_in : in STD_LOGIC_VECTOR(0 to 7)
          );
end Decoder;

architecture decode of Decoder is

type state_type is (IDLE, GET_STATE, AMOUNT_BYTE_TO_MERGE, MERGING_LAST_BYTE); -- DECODING_DATA, CHECKING_BUFFOR);
signal current_state, next_state : state_type;
signal buffor : STD_LOGIC_VECTOR(0 to 31);
signal nbBits: STD_LOGIC_VECTOR(0 to 7);
signal newX: STD_LOGIC_VECTOR(0 to 7);

begin

state_machine: process(CLK)
    begin
     if(rising_edge(clk)) then
        if(init = '1')then
            current_state <= IDLE;
        else
            current_state <= next_state;
        end if;
      end if;
    end process;

 main_process: process(current_state, start)
    variable state : STD_LOGIC_VECTOR(0 to 7);
    variable decoded_symbol : STD_LOGIC_VECTOR(0 to 7);
    variable length, bytes : integer;
    begin
    current_state <= next_state;
    
    case current_state is
    
    when IDLE =>
        
        decoded_symbol := x"00";
        buffor <= x"000000";
        length := 0;
        
        if(start = '1') then
            next_state <= GET_STATE;
        end if;
        
    when GET_STATE =>
       state := data_in;
       next_state <= AMOUNT_BYTE_TO_MERGE;
    
    when AMOUNT_BYTE_TO_MERGE =>
    
        bytes := to_integer(unsigned(data_in));
        
        if(bytes = 0) then
            --next_state <= GET_SYMBOL;
        else
            next_state <= MERGING_LAST_BYTE;
        end if;
        
    when MERGING_LAST_BYTE =>
    
       decoded_symbol := decoded_symbol(7 - length to 7) & (0 to length - 1 => '0');      
       length := to_integer(unsigned(data_in(0 to 2)));
       decoded_symbol := decoded_symbol or (length - 1 to 0 => '0') & data_in(8 - length to 7);
       
       if(bytes = 2) then
        next_state <= MERGING_LAST_BYTE; 
       else
        --next_state <= DECODING_DATA;
       end if;
       
   -- when GET_SYMBOL =>
     --    ready <= '1';
         
       -- if(new_symbol = '1') then
            
        -- end if;
         
   -- when DECODING_DATA =>
       
    end case;
    end process;
    


end decode;