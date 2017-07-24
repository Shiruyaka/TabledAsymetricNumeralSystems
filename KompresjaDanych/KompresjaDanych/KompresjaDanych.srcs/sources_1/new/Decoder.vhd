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

type state_type is (IDLE, GET_STATE, AMOUNT_BYTE_TO_MERGE, MERGING_LAST_BYTE_SECOND, MERGING_LAST_BYTE_FIRST, GET_SYMBOLS, DECODING_DATA, CHECKING_BUFFOR);
signal current_state, next_state : state_type;
signal buffor : STD_LOGIC_VECTOR(0 to 31);

signal nbBits: STD_LOGIC_VECTOR(7 downto 0);
signal newX: STD_LOGIC_VECTOR(0 to 7);
signal state: STD_LOGIC_VECTOR(7 downto 0);
signal symbol: STD_LOGIC_VECTOR(7 downto 0);

component nbBitsRom is
	Port ( symbol : in STD_LOGIC_VECTOR (7 downto 0);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR (7 downto 0));
end component;

component symbolRom is
	Port ( symbol : in STD_LOGIC_VECTOR (7 downto 0);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR (7 downto 0));
end component;

component newXRom is
	Port ( symbol : in STD_LOGIC_VECTOR (7 downto 0);
		clk : in STD_LOGIC;
		result: out STD_LOGIC_VECTOR (7 downto 0));
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

 main_process: process(current_state, start, data_in)
    variable length, bytes, counter, buffor_counter, nbBitsInt : integer := 0;
    variable decoded_sym, mask, shifted_buff : STD_LOGIC_VECTOR(0 to 7);
     
    begin
    
    next_state <= current_state;
    
    case current_state is
    
    when IDLE =>
        
        buffor <= x"00000000";        
        length := 0;
        ready <= '0';
        if(start = '1') then
            next_state <= GET_STATE;
        end if;
        
    when GET_STATE =>
       state <= data_in;
       bytes := to_integer(unsigned(data_in));
       stream <= data_in;
       next_state <= AMOUNT_BYTE_TO_MERGE;
    
    when AMOUNT_BYTE_TO_MERGE =>
    
        bytes := to_integer(unsigned(data_in));
        stream <= std_logic_vector(to_unsigned(bytes, 8));
        
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
       
      when MERGING_LAST_BYTE_SECOND =>
       
       length := to_integer(unsigned(data_in(0 to 2)));
       
       buffor_counter := buffor_counter + length;
       buffor <= (data_in(8 - length to 7) & (0 to 31 - length => '0'));
      
       next_state <= MERGING_LAST_BYTE_FIRST;
      
      when MERGING_LAST_BYTE_FIRST =>
        
        length := to_integer(unsigned(data_in(0 to 2)));
        
        buffor <= buffor or ((0 to buffor_counter - 1 => '0') & data_in(3 to 7) & (0 to 26 - buffor_counter => '0'));   
        buffor_counter := buffor_counter + length;
        
        next_state <= GET_SYMBOLS;
        
      when GET_SYMBOLS =>
        ready <= '1';
        
        if(new_symbol = '1') then
           
           counter := counter + 1;
           
           buffor <= buffor or ((0 to buffor_counter - 1 => '0') & data_in & (0 to 23 - buffor_counter => '0')); 
           buffor_counter := buffor_counter + 8;
           if(counter < 3) then
            next_state <= GET_SYMBOLS;
           else
            ready <= '0';
            counter := 0; 
            next_state <= DECODING_DATA;
           end if;
              
        end if;
         
      when DECODING_DATA =>
      nbBitsInt := to_integer(unsigned(nbBits));
      
       if(buffor_counter > nbBitsInt) then
        
        mask := (
                   nbBitsInt - 2 to 0 => '1',
                    others => '0'
                );
        
        stream <= symbol;
        buffor_counter := buffor_counter - nbBitsInt;
        shifted_buff := (buffor(buffor_counter to 7) & (0 to buffor_counter - 1 => '0')); -- don't know what it is 
        state <=  STD_LOGIC_VECTOR(unsigned(newX) + unsigned(shifted_buff));
        --(0 to to_integer(unsigned(nbBits)) => '1') & (0 to 7 - nbBits =>'0');
        next_state <= DECODING_DATA;
        else --do elsif if the data is not ended to get_symbols and if buffor is empty
            next_state <= GET_SYMBOLS;
       end if;
       
      when CHECKING_BUFFOR =>
        NULL;
    end case;
    end process;
    


end decode;