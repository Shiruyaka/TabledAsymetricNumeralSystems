----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2017 17:48:54
-- Design Name: 
-- Module Name: Buffor - use_bits
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
USE IEEE.NUMERIC_STD.ALL; 
USE IEEE.NUMERIC_STD;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Buffor is
    Port ( 
           init : in STD_LOGIC;
           start : in STD_LOGIC;
           ready : out STD_LOGIC;
           clk : in STD_LOGIC;
           end_data : in STD_LOGIC;
          
           produce_symbol : out STD_LOGIC;
           
           nbBits : in STD_LOGIC_VECTOR(3 downto 0); 
           stream : out STD_LOGIC_VECTOR(7 downto 0);
           x : in STD_LOGIC_VECTOR(7 downto 0)
          );
end Buffor;

architecture use_bits of Buffor is

type state_type is (IDLE, ENCODING, EMPTY_BUFF, OUT_AM_BYTES, OUT_STATE);
signal current_state, next_state : state_type;

signal buffor: std_logic_vector(0 to 31):= x"00000000";
signal encoded_symbol, end_state: std_logic_vector(0 to 7) := x"00";
signal action: std_logic_vector(0 to 2) := "000";
signal buffor_fill, bits, disjointed_bytes: integer := 0;

begin
    
    state_machine: process(clk)
    begin
     if(rising_edge(clk)) then
        if(init = '1')then
            current_state <= IDLE;
        else
            current_state <= next_state;
        end if;
      end if;
    end process;
    
    
    update_buffor: process(clk, action)
    begin 
        if(rising_edge(clk))then
            
            case action is
            
            when "001" =>
                if(buffor_fill + bits >= 8) then
                    stream <= encoded_symbol(0 to 7 - buffor_fill) & buffor(32 - buffor_fill to 31);
                    produce_symbol <= '1';
                    buffor <= (0 to 39 - buffor_fill - bits => '0') & encoded_symbol(8 - buffor_fill to bits - 1 );
                    buffor_fill <= bits - 8 + buffor_fill;
                else
                    buffor <= buffor or ((23 - buffor_fill downto 0 => '0') & encoded_symbol & (buffor_fill - 1 downto 0 => '0'));
                    buffor_fill <= buffor_fill + bits;
                end if;
            
            when "010" =>
                
                
                if(buffor_fill > 5) then 
                    
                    disjointed_bytes <= disjointed_bytes + 1;
                    produce_symbol <= '1';
                    
                    stream  <= std_logic_vector(to_unsigned(5, 3)) & buffor(27 to 31);
                    buffor_fill <= buffor_fill - 5;
                    buffor <= (4 downto 0 => '0') & buffor(0 to 26);
                
                elsif(buffor_fill > 0) then
                    
                    disjointed_bytes <= disjointed_bytes + 1;
                    produce_symbol <= '1';
                    
                    stream <= std_logic_vector(to_unsigned(buffor_fill, 3)) &
                                              (4 - buffor_fill downto 0 => '0') &
                                              buffor(31 downto 32 - buffor_fill); 
                    buffor_fill <= 0;
                    buffor <= x"00000000";
                
                else        
                
                    disjointed_bytes <= 0;
                
                end if;
            
            when "011" =>
                
                stream <= std_logic_vector(to_unsigned(disjointed_bytes, 8));
                
            when "100" =>
                
                stream <= end_state;
                
            when others =>
                produce_symbol <= '0';            
            
            end case;
            
            
            
        else
             produce_symbol <= '0';
        end if;
    end process;
    
    
    encode: process(current_state, start)
        
    begin
        next_state <= current_state;
        
        case current_state is
        
        when IDLE =>
        
            ready <= '0';           
            action <= "111";
                                       
            if(start = '1')then
                next_state <= ENCODING;
            end if;
            
        when ENCODING =>
            
            bits <= to_integer(unsigned(nbBits)); 
            encoded_symbol <= x(to_integer(unsigned(nbBits)) - 1 downto 0) & 
                              (7 - to_integer(unsigned(nbBits)) downto 0 => '0'); 
            action <= "001";        
            
            if(end_data = '0')then
                next_state <= IDLE;
            else
                action <= "010";
                end_state <= x;
                next_state <= EMPTY_BUFF;
            end if;                                                     
            
        when EMPTY_BUFF =>
         
            if(buffor_fill = 0) then
                next_state <= OUT_AM_BYTES;
                action <= "011";
            end if;
        
        when OUT_AM_BYTES =>
            
            action <= "100";
            next_state <= OUT_STATE;
            
        when OUT_STATE =>
        
            action <= "111";
            next_state <= IDLE;
                
        end case;   
    end process;
    
end use_bits;
