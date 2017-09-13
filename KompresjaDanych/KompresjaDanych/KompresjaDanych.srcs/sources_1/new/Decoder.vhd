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
            
            end_data : in STD_LOGIC;
            new_symbol : in STD_LOGIC;
            end_decoded : out STD_LOGIC;
            
            produced_symbol : out STD_LOGIC;  
            ready : out STD_LOGIC;
                        
            stream : out STD_LOGIC_VECTOR(0 to 15);
            data_in : in STD_LOGIC_VECTOR(0 to 15)
          );
end Decoder;

architecture decode of Decoder is

type state_type is (IDLE, GET_STATE, AMOUNT_BYTE_TO_MERGE, MERGING_LAST_BYTE_SECOND, 
                    MERGING_LAST_BYTE_FIRST, GET_SYMBOLS, DECODING_DATA, COMPUTE_NEXT_STATE);
    
signal current_state, next_state : state_type;
signal buffor : STD_LOGIC_VECTOR(0 to 31);

signal nbBits, newX, state, symbol: STD_LOGIC_VECTOR(0 to 15);

component nbBitsRom is
	Port ( symbol : in STD_LOGIC_VECTOR (0 to 15);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR (0 to 15));
end component;

component symbolRom is
	Port ( symbol : in STD_LOGIC_VECTOR (0 to 15);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR (0 to 15));
end component;

component newXRom is
	Port ( symbol : in STD_LOGIC_VECTOR (0 to 15);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR (0 to 15));
end component;


begin

newXRm: newXRom
Port map(
            symbol => state,
            clk => clk,
            result => newX
        );
        
symbolRm: symbolRom
Port map(
    symbol => state,
    clk => clk,
    result => symbol
    );   
    
nbBitsRm: nbBitsRom
    Port map(
        symbol => state,
        clk => clk,
        result => nbBits
        );       

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

 main_process: process(current_state, start, data_in, new_symbol)
    variable length, bytes, buffor_counter, nbBitsInt : integer := 0;
    variable decoded_sym, mask, shifted_buff, sixteen : STD_LOGIC_VECTOR(0 to 15);
     
    begin
    
    next_state <= current_state;
    
    case current_state is
    
    when IDLE =>
    
        end_decoded <= '0';
        buffor <= x"00000000";        
        length := 0;
        ready <= '0';
        produced_symbol <= '0';
        sixteen := "0000000000100000";
        
        if(start = '1') then
            end_decoded <= '0';
            next_state <= GET_STATE;
        end if;
        
    when GET_STATE =>
        ready <= '1';
        
        if(new_symbol = '1') then
            ready <= '0';
            state <= data_in;
            bytes := to_integer(unsigned(data_in));
            next_state <= AMOUNT_BYTE_TO_MERGE;
        end if;

    when AMOUNT_BYTE_TO_MERGE =>
        ready <= '1';
        
        if(new_symbol = '1') then
            
            bytes := to_integer(unsigned(data_in));
            ready <= '0';
            case bytes is 
                when 0 =>
                    next_state <= GET_SYMBOLS;
                when 1 => 
                    next_state <= MERGING_LAST_BYTE_FIRST;
                when 2 =>
                    next_state <= MERGING_LAST_BYTE_SECOND;
                when others =>
                    NULL;
            end case;

        end if;
      
      when MERGING_LAST_BYTE_SECOND =>
        ready <= '1';
       
       if(new_symbol = '1')then 
          ready <= '0';
          length := to_integer(unsigned(data_in(8 to 10)));
           
          buffor_counter := buffor_counter + length;
          buffor <= (data_in(16 - length to 15) & (0 to 31 - length => '0'));

          next_state <= MERGING_LAST_BYTE_FIRST;

       end if;
      
      
      when MERGING_LAST_BYTE_FIRST =>
        ready <= '1';
        
        if(new_symbol = '1') then
            ready <= '0';
            length := to_integer(unsigned(data_in(8 to 10)));
            
            buffor <= buffor or ((0 to buffor_counter - 1 => '0') & data_in(16 - length to 15) & (0 to 31 - buffor_counter - length => '0'));               
            buffor_counter := buffor_counter + length;
            
            next_state <= DECODING_DATA;
                                
        end if;
        
      when GET_SYMBOLS =>
        ready <= '1';
        produced_symbol <= '0';
        if(new_symbol = '1') then
        
               ready <= '0';
               buffor <= buffor or ((0 to buffor_counter - 1 => '0') & data_in(8 to 15) & (0 to 23 - buffor_counter => '0')); 
               buffor_counter := buffor_counter + 8;
               ready <= '0';
               next_state <= DECODING_DATA;
               
        end if;
               
      when DECODING_DATA =>
      
       nbBitsInt := to_integer(unsigned(nbBits));
      
       if(buffor_counter >= nbBitsInt) then
        
            produced_symbol <= '1';
            stream <= symbol;
            
                   
            state <=  STD_LOGIC_VECTOR(unsigned(sixteen) + unsigned(newX) + unsigned(buffor(0 to nbBitsInt - 1)));
            buffor <= (buffor(nbBitsInt to buffor_counter -  1) & (0 to 31 - buffor_counter + nbBitsInt  => '0'));
            
            buffor_counter := buffor_counter - nbBitsInt;
            next_state <= COMPUTE_NEXT_STATE;
        
        else
            if (end_data = '1') then
                end_decoded <= '1';
                next_state <= IDLE;
            else
                next_state <= GET_SYMBOLS;    
            end if;
       end if;
       
    when COMPUTE_NEXT_STATE =>
            produced_symbol <= '0';
            next_state <= DECODING_DATA;
  
    end case;
    end process;
    


end decode;