
library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Driver is
    Port ( 
           gclk : in STD_LOGIC;
           init : in STD_LOGIC;
           start : in STD_LOGIC;
           reset_ram : out STD_LOGIC;
           
           amount_bytes : out STD_LOGIC_VECTOR(31 downto 0);
           r_value : out STD_LOGIC_VECTOR(7 downto 0);
           start_encoder : out STD_LOGIC;
           init_encoder : out STD_LOGIC;
            
           start_nb_enable : out STD_LOGIC;
           start_nb_address : out STD_LOGIC_VECTOR (31 downto 0);                                 
           start_from_ram : in STD_LOGIC_VECTOR (31 downto 0);
           nb_from_ram : in STD_LOGIC_VECTOR (31 downto 0);
           
           nbBits_for_encoder : out STD_LOGIC_VECTOR(7 downto 0);
           
           state_enable : out STD_LOGIC;
           state_for_encoder : out STD_LOGIC_VECTOR(15 downto 0);
           state_address : out STD_LOGIC_VECTOR (31 downto 0);
           state_from_ram : in STD_LOGIC_VECTOR(31 downto 0);
                      
           --dataIn Ram
           new_data : out STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (31 downto 0);
           data_in_address : out STD_LOGIC_VECTOR (31 downto 0);
           data_in_enable : out STD_LOGIC;
           --dataOut Ram
           data_produced : in STD_LOGIC;
           data_out_from_encoder : in STD_LOGIC_VECTOR (15 downto 0);
           data_out_address : out STD_LOGIC_VECTOR (31 downto 0);
           data_out_to_save : out STD_LOGIC_VECTOR (31 downto 0);
           out_enable : out STD_LOGIC;
           write_enable : out STD_LOGIC_VECTOR(3 downto 0));
end Driver;

architecture Communicate of Driver is

type state_type is (Idle, GET_AMOUNT_BYTES, GET_rValue, GET_FIRST_SYMBOL, RUN_ENCODER, GET_NEW_DATA, WAITING);

signal 
    get_new_state : STD_LOGIC;
signal 
    current_state, next_state : state_type;
signal 
    r_value_int, nb_bits_int : integer;
    
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

save_output: process(gclk, data_produced)
variable mem_point: integer;
    begin
        if(rising_edge(gclk))then
            if(data_produced = '1') then
                data_out_address <= x"4000_0000" + STD_LOGIC_VECTOR(to_unsigned(mem_point, 31));
                mem_point := mem_point + 4;
                data_out_to_save <= (15 downto 0 => '0') & data_out_from_encoder;
                write_enable <= x"F";
                out_enable <= '1';
            else
                state_enable <= '0';
                write_enable <= x"0";
            end if;
        end if;
    end process;

get_start_nb: process(gclk, data_in)
begin
    if(rising_edge(gclk)) then
            start_nb_address <= x"4000_0000" + STD_LOGIC_VECTOR(UNSIGNED(data_in));
    end if;
end process;

compute_nbBits: process(gclk, start_from_ram, nb_from_ram)
variable nb_bits : STD_LOGIC_VECTOR(31 downto 0);
begin
    if(rising_edge(gclk)) then
        nb_bits := STD_LOGIC_VECTOR(unsigned(state_from_ram) + unsigned(start_from_ram) + unsigned(nb_from_ram));
        
        case r_value_int is
            when 2 => 
                nb_bits:= (17 downto 0 => '0') & nb_bits(15 downto 2);
            when 3 =>
                nb_bits := (18 downto 0 => '0') & nb_bits(15 downto 3);
            when 4 =>
                nb_bits := (19 downto 0 => '0') & nb_bits(15 downto 4);
            when 5 =>
                nb_bits := (20 downto 0 => '0') & nb_bits(15 downto 5);                              
            when 6 =>
                nb_bits := (21 downto 0 => '0') & nb_bits(15 downto 6);              
            when 7 =>
                nb_bits := (22 downto 0 => '0') & nb_bits(15 downto 7);                             
            when 8 =>
                nb_bits := (23 downto 0 => '0') & nb_bits(15 downto 8);                              
            when 9 =>
                nb_bits := (24 downto 0 => '0') & nb_bits(15 downto 9);                             
            when 10 =>
                nb_bits := (25 downto 0 => '0') & nb_bits(15 downto 10);                
            when 11 =>
                nb_bits := (26 downto 0 => '0') & nb_bits(15 downto 11);                               
            when 12 =>
                nb_bits := (27 downto 0 => '0') & nb_bits(15 downto 12);
            when 13 =>
                nb_bits := (28 downto 0 => '0') & nb_bits(15 downto 13); 
            when others =>
                nb_bits := x"00000000";                                                                
        end case;
        
       nbBits_for_encoder <= nb_bits(7 downto 0);
       nb_bits_int <= to_integer(unsigned(nb_bits));
       get_new_state <= '1';
       
    end if;
end process;

get_state: process(gclk, get_new_state)
variable computed_state : STD_LOGIC_VECTOR(31 downto 0);
begin
    if(rising_edge(gclk)) then
    
        case nb_bits_int is
            when 1 => 
                computed_state := start_from_ram + ((16 downto 0 => '0') & state_from_ram(15 downto 1));
            when 2 =>
                computed_state := start_from_ram + ((17 downto 0 => '0') & state_from_ram(15 downto 2));
            when 3 =>
                computed_state := start_from_ram + ((18 downto 0 => '0') & state_from_ram(15 downto 3));
            when 4 =>
                computed_state := start_from_ram + ((19 downto 0 => '0') & state_from_ram(15 downto 4));
            when 5 =>   
                computed_state := start_from_ram + ((20 downto 0 => '0') & state_from_ram(15 downto 5));
            when 6 =>
                computed_state := start_from_ram + ((21 downto 0 => '0') & state_from_ram(15 downto 6));
            when 7 =>
                computed_state := start_from_ram + ((22 downto 0 => '0') & state_from_ram(15 downto 7));
            when others =>
                computed_state := start_from_ram;
        end case;

        state_address <= x"4000_0000" + computed_state;
        
    end if;
end process;

--state_for_encoder <= state_from_ram(15 downto 0);
set_state: process(gclk, state_from_ram)
begin
    if(rising_edge(gclk)) then
        state_for_encoder <= state_from_ram(15 downto 0);        
    end if;
end process;

main_process: process(current_state, start)
    variable mem_point, counter, amount : integer := 0;
    begin 
        next_state <= current_state;
    
        case current_state is
            when IDLE =>
                reset_ram <= '1';
                start_nb_enable <= '0';
                data_in_enable <= '0';
                
                if(start = '1') then
                    reset_ram <= '0';
                    start_nb_enable <= '1';
                    data_in_enable <= '1';
                    next_state <= GET_AMOUNT_BYTES;
                    data_in_address <= x"4000_0000";
                end if;
            
            when GET_AMOUNT_BYTES =>
               
                amount_bytes <= data_in;
                amount := to_integer(unsigned(data_in));
                
                mem_point := mem_point + 4;
                data_in_address <= x"4000_0004";
                next_state <= GET_rValue;
            
           when GET_rValue =>
           
                r_value_int <= to_integer(unsigned(data_in(7 downto 0))) + 1; 
                mem_point := mem_point + 4;
                init_encoder <= '1';
                data_in_address <= x"4000_0008";
                
                next_state <= GET_FIRST_SYMBOL;
                
           when GET_FIRST_SYMBOL =>
           
                counter := counter + 1;
                init_encoder <= '0';
                start_encoder <= '1';
                data_in_enable <= '0';
                next_state <= RUN_ENCODER;
                
           when RUN_ENCODER =>
                
                start_encoder <= '0';
                new_data <= '1';
                data_in_enable <= '1';
                data_in_address <= x"4000_0000" + STD_LOGIC_VECTOR(to_unsigned(mem_point, 31));
                
                counter := counter + 1;
                mem_point := mem_point + 4;
                
                next_state <= GET_NEW_DATA;
                
           when GET_NEW_DATA =>
                
                data_in_enable <= '0';
                start_encoder <= '0';               
                next_state <= WAITING;
                
           when WAITING =>
                
                if(counter = amount)then
                    next_state <= IDLE;
                else
                    next_state <= RUN_ENCODER;
                end if;
           
       end case;     
    end process;
end Communicate;
