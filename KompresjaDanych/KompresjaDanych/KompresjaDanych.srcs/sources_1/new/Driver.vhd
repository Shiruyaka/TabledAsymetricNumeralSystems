----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.08.2017 17:45:29
-- Design Name: 
-- Module Name: Middleware - Communicate
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

entity Driver is
    Port ( 
           gclk : in STD_LOGIC;
           start : in STD_LOGIC;
           init : in STD_LOGIC;
           
           amount_bytes : out STD_LOGIC_VECTOR(31 downto 0);
           r_value : out STD_LOGIC_VECTOR(7 downto 0);
           roms_enable : out STD_LOGIC;
           start_encoder : out STD_LOGIC;
           init_encoder : out STD_LOGIC;
                                 
           start_nb_no : in STD_LOGIC_VECTOR (15 downto 0);
           start_for_encoder : out STD_LOGIC_VECTOR(15 downto 0);
           nb_for_encoder : out STD_LOGIC_VECTOR(15 downto 0);
           start_nb_address : out STD_LOGIC_VECTOR (31 downto 0);
           
           computed_state : in STD_LOGIC_VECTOR (15 downto 0);
           encoding_state_for_encoder : out STD_LOGIC_VECTOR(15 downto 0);
           state_address : out STD_LOGIC_VECTOR (31 downto 0);
                      
           --dataIn Ram
           new_data : out STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (31 downto 0);
           data_in_to_encoder : out STD_LOGIC_VECTOR (15 downto 0);
           data_in_address : out STD_LOGIC_VECTOR (31 downto 0);
           
           --dataOut Ram
           data_produced : in STD_LOGIC;
           data_out_from_encoder : in STD_LOGIC_VECTOR (31 downto 0);
           data_out_address : out STD_LOGIC_VECTOR (31 downto 0));
end Driver;

architecture Communicate of Driver is

type state_type is (Idle, GET_AMOUNT_BYTES, GET_rValue, GET_FIRST_SYMBOL);

signal 
       current_state, next_state : state_type;
begin

state_machine: process(gclk)
    begin
     if(rising_edge(gclk)) then
        if(init = '1')then
            current_state <= IDLE;
        else
            current_state <= next_state;
        end if;
      end if;
    end process;
    
main_process: process(current_state, start)
    variable mem_point : integer := 0;
    begin 
        next_state <= current_state;
    
        case current_state is
            when IDLE =>
            
                roms_enable <= '0';
                
                if(start = '1') then
                    roms_enable <= '1';
                    next_state <= GET_AMOUNT_BYTES;
                end if;
            
            when GET_AMOUNT_BYTES =>
               
                data_in_address <= x"4000_0000";
                mem_point := mem_point + 4;
                next_state <= GET_rValue;
            
           when GET_rValue =>
                
                amount_bytes <= data_in;
                data_in_address <= x"4000_0004";
                mem_point := mem_point + 4;
                init_encoder <= '1';
                
           when GET_FIRST_SYMBOL =>
                r_value <= data_in(7 downto 0);
                init_encoder <= '0';
                data_in_address <= x"4000_0008";
                
       end case;     
    end process;
end Communicate;
