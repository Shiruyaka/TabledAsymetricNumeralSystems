library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;


entity Big_Rom is
	port (
  
    DATA_IN_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_IN_BRAM_clk : in STD_LOGIC;
    DATA_IN_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_IN_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_IN_BRAM_en : in STD_LOGIC;
    DATA_IN_BRAM_rst : in STD_LOGIC;
    DATA_IN_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    
    DATA_OUT_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_clk : in STD_LOGIC;
    DATA_OUT_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_en : in STD_LOGIC;
    DATA_OUT_BRAM_rst : in STD_LOGIC;
    DATA_OUT_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    
    NB_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    NB_BRAM_clk : in STD_LOGIC;
    NB_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    NB_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 ) := x"00000000";
    NB_BRAM_en : in STD_LOGIC;
    NB_BRAM_rst : in STD_LOGIC;
    NB_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    
    START_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    START_BRAM_clk : in STD_LOGIC;
    START_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    START_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 ) := x"00000000";
    START_BRAM_en : in STD_LOGIC;
    START_BRAM_rst : in STD_LOGIC;
    START_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    
    ENCODING_TABLE_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ENCODING_TABLE_BRAM_clk : in STD_LOGIC;
    ENCODING_TABLE_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ENCODING_TABLE_BRAM_dout : out STD_LOGIC_VECTOR ( 31 downto 0 ) := x"00000000";
    ENCODING_TABLE_BRAM_en : in STD_LOGIC;
    ENCODING_TABLE_BRAM_rst : in STD_LOGIC;
    ENCODING_TABLE_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );

    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC

  );
  
end Big_Rom;
  
architecture find of Big_Rom is

begin

	nb_process: process(NB_BRAM_clk,  DATA_IN_BRAM_addr) 
	begin
		
		if(rising_edge(NB_BRAM_clk) and NB_BRAM_en = '1') then
			
			case NB_BRAM_addr is
				when x"4200_0000" => NB_BRAM_dout <= "00000000000000000000000001001000";
				when x"4200_0004" => NB_BRAM_dout <= "00000000000000000000000000010000";
				when x"4200_0008" => NB_BRAM_dout <= "00000000000000000000000000101100";
				when others => NB_BRAM_dout <= x"00000000"; 
			end case;
			
		end if;
	
	end process;
	
	
	start_process: process(START_BRAM_clk, START_BRAM_addr)
	begin
	
		if(rising_edge(START_BRAM_clk) and START_BRAM_en = '1') then
		
			case START_BRAM_addr is                      
				when x"4000_0000" => START_BRAM_dout <= "11111111111111111111111111111101";
				when x"4000_0004" => START_BRAM_dout <= "11111111111111111111111111111011";
				when x"4000_0008" => START_BRAM_dout <= "00000000000000000000000000000110";
				when others => START_BRAM_dout <= x"00000000"; 
			end case;
		
		end if;
		
	end process;
	
	
	encoding_process: process(ENCODING_TABLE_BRAM_clk, ENCODING_TABLE_BRAM_addr)
	begin
	
		if(rising_edge(ENCODING_TABLE_BRAM_clk) and ENCODING_TABLE_BRAM_en = '1')
		then
		
			case ENCODING_TABLE_BRAM_addr is
				when x"0000_0000" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000010000";
				when x"0000_0004" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000010101";
				when x"0000_0008" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000011010";
				when x"0000_000C" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000010010";
				when x"0000_0010" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000010011";
				when x"0000_0014" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000010100";
				when x"0000_0018" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000011000";
				when x"0000_001c" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000011001";
				when x"0000_0020" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000011101";
				when x"0000_0024" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000011110";
				when x"0000_0028" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000011111";
				when x"0000_002c" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000010001";
				when x"0000_0030" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000010110";
				when x"0000_0034" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000010111";
				when x"0000_0038" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000011011";
				when x"0000_003c" => ENCODING_TABLE_BRAM_dout <= "00000000000000000000000000011100";
				when others => ENCODING_TABLE_BRAM_dout <= x"00000000";
			
			end case;
		
		end if;
	
	end process;
	
	
	data_in_process: process(DATA_IN_BRAM_clk, DATA_IN_BRAM_addr)
	begin
	
		if(rising_edge(DATA_IN_BRAM_clk) and DATA_IN_BRAM_en = '1')
		then
		
			case DATA_IN_BRAM_addr is
			
				when x"0000_0004" => DATA_IN_BRAM_dout <= "00000000000000000000000000000100";
				when x"0000_0000" => DATA_IN_BRAM_dout <= "00000000000000000000000000001100";
				when x"0000_0008" => DATA_IN_BRAM_dout <= "00000000000000000000000000000001";
				when x"0000_000C" => DATA_IN_BRAM_dout <= "00000000000000000000000000000001";
				when x"0000_0010" => DATA_IN_BRAM_dout <= "00000000000000000000000000000010";
				when x"0000_0014" => DATA_IN_BRAM_dout <= "00000000000000000000000000000001";
				when x"0000_0018" => DATA_IN_BRAM_dout <= "00000000000000000000000000000010";
				when x"0000_001c" => DATA_IN_BRAM_dout <= "00000000000000000000000000000001";
				when x"0000_0020" => DATA_IN_BRAM_dout <= "00000000000000000000000000000001";
				when x"0000_0024" => DATA_IN_BRAM_dout <= "00000000000000000000000000000000";
				when x"0000_0028" => DATA_IN_BRAM_dout <= "00000000000000000000000000000010";
				when x"0000_002c" => DATA_IN_BRAM_dout <= "00000000000000000000000000000001";
				when x"0000_0030" => DATA_IN_BRAM_dout <= "00000000000000000000000000000010";
				when x"0000_0034" => DATA_IN_BRAM_dout <= "00000000000000000000000000000000";
				when others => DATA_IN_BRAM_dout <= x"00000000";
			
			end case;
			
		end if;
	
	end process;




end find;
