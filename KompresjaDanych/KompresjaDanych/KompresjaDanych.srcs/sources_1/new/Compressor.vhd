
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Compressor is
Port ( 
            gclk : in STD_LOGIC;
            init : in STD_LOGIC;
            start : in STD_LOGIC;        
            --DDR and IO_FIXED to OUT
            
            --DDR for start
            DDR_addr_s : inout STD_LOGIC_VECTOR ( 14 downto 0 );
            DDR_ba_s : inout STD_LOGIC_VECTOR ( 2 downto 0 );
            DDR_cas_n_s : inout  STD_LOGIC;
            DDR_ck_n_s : inout STD_LOGIC;
            DDR_ck_p_s : inout STD_LOGIC;
            DDR_cke_s : inout STD_LOGIC;
            DDR_cs_n_s : inout STD_LOGIC;
            DDR_dm_s : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_dq_s : inout STD_LOGIC_VECTOR ( 31 downto 0 );
            DDR_dqs_n_s : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_dqs_p_s : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_odt_s : inout STD_LOGIC;
            DDR_ras_n_s : inout STD_LOGIC;
            DDR_reset_n_s : inout STD_LOGIC;
            DDR_we_n_s : inout STD_LOGIC;
            
            --DDR nb
            DDR_addr_n : inout STD_LOGIC_VECTOR ( 14 downto 0 );
            DDR_ba_n : inout STD_LOGIC_VECTOR ( 2 downto 0 );
            DDR_cas_n_n : inout  STD_LOGIC;
            DDR_ck_n_n : inout STD_LOGIC;
            DDR_ck_p_n : inout STD_LOGIC;
            DDR_cke_n : inout STD_LOGIC;
            DDR_cs_n_n : inout STD_LOGIC;
            DDR_dm_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_dq_n : inout STD_LOGIC_VECTOR ( 31 downto 0 );
            DDR_dqs_n_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_dqs_p_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_odt_n : inout STD_LOGIC;
            DDR_ras_n_n : inout STD_LOGIC;
            DDR_reset_n_n : inout STD_LOGIC;
            DDR_we_n_n : inout STD_LOGIC;
            
            --DDR encodingtable           
            DDR_addr_e : inout STD_LOGIC_VECTOR ( 14 downto 0 );
            DDR_ba_e : inout STD_LOGIC_VECTOR ( 2 downto 0 );
            DDR_cas_n_e : inout  STD_LOGIC;
            DDR_ck_n_e : inout STD_LOGIC;
            DDR_ck_p_e : inout STD_LOGIC;
            DDR_cke_e : inout STD_LOGIC;
            DDR_cs_n_e : inout STD_LOGIC;
            DDR_dm_e : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_dq_e : inout STD_LOGIC_VECTOR ( 31 downto 0 );
            DDR_dqs_n_e : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_dqs_p_e : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_odt_e : inout STD_LOGIC;
            DDR_ras_n_e : inout STD_LOGIC;
            DDR_reset_n_e : inout STD_LOGIC;
            DDR_we_n_e : inout STD_LOGIC;
            
            --DDR data_in
            DDR_addr_i : inout STD_LOGIC_VECTOR ( 14 downto 0 );
            DDR_ba_i : inout STD_LOGIC_VECTOR ( 2 downto 0 );
            DDR_cas_n_i : inout  STD_LOGIC;
            DDR_ck_n_i : inout STD_LOGIC;
            DDR_ck_p_i : inout STD_LOGIC;
            DDR_cke_i : inout STD_LOGIC;
            DDR_cs_n_i : inout STD_LOGIC;
            DDR_dm_i : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_dq_i : inout STD_LOGIC_VECTOR ( 31 downto 0 );
            DDR_dqs_n_i : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_dqs_p_i : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_odt_i : inout STD_LOGIC;
            DDR_ras_n_i : inout STD_LOGIC;
            DDR_reset_n_i : inout STD_LOGIC;
            DDR_we_n_i : inout STD_LOGIC;

            --DDR data out
            DDR_addr_o : inout STD_LOGIC_VECTOR ( 14 downto 0 );
            DDR_ba_o : inout STD_LOGIC_VECTOR ( 2 downto 0 );
            DDR_cas_n_o : inout  STD_LOGIC;
            DDR_ck_n_o : inout STD_LOGIC;
            DDR_ck_p_o : inout STD_LOGIC;
            DDR_cke_o : inout STD_LOGIC;
            DDR_cs_n_o : inout STD_LOGIC;
            DDR_dm_o : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_dq_o : inout STD_LOGIC_VECTOR ( 31 downto 0 );
            DDR_dqs_n_o : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_dqs_p_o : inout STD_LOGIC_VECTOR ( 3 downto 0 );
            DDR_odt_o : inout STD_LOGIC;
            DDR_ras_n_o : inout STD_LOGIC;
            DDR_reset_n_o : inout STD_LOGIC;
            DDR_we_n_o : inout STD_LOGIC;

            FIXED_IO_ddr_vrn : inout STD_LOGIC;
            FIXED_IO_ddr_vrp : inout STD_LOGIC;
            FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
            FIXED_IO_ps_clk : inout STD_LOGIC;
            FIXED_IO_ps_porb : inout STD_LOGIC;
            FIXED_IO_ps_srstb : inout STD_LOGIC            
);
end Compressor;

architecture compress of Compressor is

component start_block_wrapper
Port(
    BRAM_PORTB_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_clk : in STD_LOGIC;
    BRAM_PORTB_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_en : in STD_LOGIC;
    BRAM_PORTB_rst : in STD_LOGIC;
    BRAM_PORTB_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
end component;

component nb_block_wrapper 
Port(
    BRAM_PORTB_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_clk : in STD_LOGIC;
    BRAM_PORTB_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_en : in STD_LOGIC;
    BRAM_PORTB_rst : in STD_LOGIC;
    BRAM_PORTB_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
end component;

component encoding_table_block_wrapper
Port (
      BRAM_PORTB_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
      BRAM_PORTB_clk : in STD_LOGIC;
      BRAM_PORTB_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
      BRAM_PORTB_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
      BRAM_PORTB_en : in STD_LOGIC;
      BRAM_PORTB_rst : in STD_LOGIC;
      BRAM_PORTB_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
end component;

component data_in_block_wrapper is
  port (
    BRAM_PORTB_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_clk : in STD_LOGIC;
    BRAM_PORTB_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_en : in STD_LOGIC;
    BRAM_PORTB_rst : in STD_LOGIC;
    BRAM_PORTB_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
end component;

component data_out_block_wrapper is
  port (
    BRAM_PORTB_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_clk : in STD_LOGIC;
    BRAM_PORTB_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_en : in STD_LOGIC;
    BRAM_PORTB_rst : in STD_LOGIC;
    BRAM_PORTB_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
end component;


component Encoder
Port (       
        init : in STD_LOGIC;
        start : in STD_LOGIC;
        ready : out STD_LOGIC;
        clk : in STD_LOGIC;
        new_symbol : in STD_LOGIC;
        
        produce_symbol : out STD_LOGIC;
        
        amount_bytes : in STD_LOGIC_VECTOR(31 downto 0);
        nbBits : in STD_LOGIC_VECTOR(7 downto 0); 
        stream : out STD_LOGIC_VECTOR(15 downto 0);
        x : in STD_LOGIC_VECTOR(15 downto 0)
     );
end component;

component Driver
Port ( 
        gclk : in STD_LOGIC;
        init : in STD_LOGIC;
        start : in STD_LOGIC;
        reset_ram : OUT STD_LOGIC;
        
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
        write_enable : out STD_LOGIC_VECTOR(3 downto 0)
        );
end component;

    signal
        Start_Encoder, Data_Produced, New_Symbol, Roms_Enable, New_Data, Bram_Reset,
        EncodingRam_Enable, Start_Driver, Init_Middleware, Init_Encoder, Start_Nb_Enable, Data_In_Enable, Out_Enable: STD_LOGIC;
        
    signal
        Data_In, Data_out, State_For_Encoder : STD_LOGIC_VECTOR(15 downto 0);
    
    signal
        Amount_Bytes, Start_Nb_Address, State_Address, Symbol, Data_In_Address, 
        Data_Out_Address, Start_Address, Nb_Address, Nb_From_Ram, Encoding_Table_Address,
        Start_In, Nb_In, Encoding_In, Start_From_Ram, State_From_Ram,
        Data_Out_To_Save  : STD_LOGIC_VECTOR(31 downto 0);
    
    signal
        NbBits : STD_LOGIC_VECTOR(7 downto 0);
        
    signal
        Write_Enable : STD_LOGIC_VECTOR(3 downto 0);
        
    type 
        state_type is (IDLE, GO_DRIVER, WAITING);
    
    signal 
        current_state, next_state : state_type;

begin


enc: Encoder
 Port map(
        clk => gclk,
        init => Init_Encoder,
        start => Start_Encoder,
        
        x => State_For_Encoder,
        nbBits => NbBits,
        stream => Data_out,
        amount_bytes => Amount_Bytes,
        produce_symbol => Data_Produced,
        new_symbol => New_symbol
 );

middle: Driver
 Port map(
        gclk => gclk,
        start => Start_Driver,
        init => Init_Middleware,
        init_encoder => Init_Encoder,
        start_nb_enable => Start_Nb_Enable,
        amount_bytes => Amount_Bytes,
        data_in_enable => Data_In_Enable,
        start_encoder => Start_Encoder,
        start_nb_address => Start_Nb_Address,
        nb_from_ram => Nb_From_Ram,
        state_address => State_Address,
        start_from_ram => Start_From_Ram,
        state_from_ram => State_From_Ram,
        new_data => New_Data,
        data_in => Symbol,
        data_in_address => Data_In_Address,
        data_produced => Data_Produced,
        data_out_from_encoder => Data_Out,
        data_out_to_save => Data_Out_To_Save,
        data_out_address => Data_Out_Address,
        state_for_encoder => State_For_Encoder,
        nbBits_for_encoder => NbBits,
        reset_ram => Bram_Reset,
        out_enable => Out_Enable,
        write_enable => Write_Enable
    );

start_block: start_block_wrapper
    Port map(  
        BRAM_PORTB_addr => Start_Address,
        BRAM_PORTB_clk => gclk,
        BRAM_PORTB_din => Start_In,
        BRAM_PORTB_dout => Start_From_Ram,
        BRAM_PORTB_en => Start_Nb_Enable,
        BRAM_PORTB_rst => Bram_Reset,
        BRAM_PORTB_we => x"0",
        
        DDR_addr => DDR_addr_s,
        DDR_ba => DDR_ba_s,
        DDR_cas_n => DDR_cas_n_s,
        DDR_ck_n => DDR_ck_n_s,
        DDR_ck_p => DDR_ck_p_s,
        DDR_cke => DDR_cke_s,
        DDR_cs_n => DDR_cs_n_s,
        DDR_dm => DDR_dm_s,
        DDR_dq => DDR_dq_s,
        DDR_dqs_n => DDR_dqs_n_s,
        DDR_dqs_p => DDR_dqs_p_s,
        DDR_odt => DDR_odt_s,
        DDR_ras_n => DDR_ras_n_s,
        DDR_reset_n => DDR_reset_n_s,
        DDR_we_n => DDR_we_n_s,
        FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
        FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
        FIXED_IO_mio => FIXED_IO_mio,
        FIXED_IO_ps_clk => FIXED_IO_ps_clk,
        FIXED_IO_ps_porb => FIXED_IO_ps_porb,
        FIXED_IO_ps_srstb => FIXED_IO_ps_srstb 
      );
 
nb_block: nb_block_wrapper
     Port map(
        BRAM_PORTB_addr => Nb_Address,
        BRAM_PORTB_clk => gclk,
        BRAM_PORTB_din => Nb_In,
        BRAM_PORTB_dout => Nb_From_Ram,
        BRAM_PORTB_en => Start_Nb_Enable,
        BRAM_PORTB_rst => Bram_Reset,
        BRAM_PORTB_we => x"0",
        
        DDR_addr => DDR_addr_n,
        DDR_ba => DDR_ba_n,
        DDR_cas_n => DDR_cas_n_n,
        DDR_ck_n => DDR_ck_n_n,
        DDR_ck_p => DDR_ck_p_n,
        DDR_cke => DDR_cke_n,
        DDR_cs_n => DDR_cs_n_n,
        DDR_dm => DDR_dm_n,
        DDR_dq => DDR_dq_n,
        DDR_dqs_n => DDR_dqs_n_n,
        DDR_dqs_p => DDR_dqs_p_n,
        DDR_odt => DDR_odt_n,
        DDR_ras_n => DDR_ras_n_n,
        DDR_reset_n => DDR_reset_n_N,
        DDR_we_n => DDR_we_n_n,
        
        FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
        FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
        FIXED_IO_mio => FIXED_IO_mio,
        FIXED_IO_ps_clk => FIXED_IO_ps_clk,
        FIXED_IO_ps_porb => FIXED_IO_ps_porb,
        FIXED_IO_ps_srstb => FIXED_IO_ps_srstb 
  );

encoding_table_block: encoding_table_block_wrapper
     Port map(  
        BRAM_PORTB_addr => Encoding_Table_Address,
        BRAM_PORTB_clk => gclk,
        BRAM_PORTB_din => Encoding_In,
        BRAM_PORTB_dout => State_From_Ram,
        BRAM_PORTB_en => EncodingRam_Enable,
        BRAM_PORTB_rst => Bram_Reset,
        BRAM_PORTB_we => x"0",
        
        DDR_addr => DDR_addr_e,
        DDR_ba => DDR_ba_e,
        DDR_cas_n => DDR_cas_n_e,
        DDR_ck_n => DDR_ck_n_e,
        DDR_ck_p => DDR_ck_p_e,
        DDR_cke => DDR_cke_e,
        DDR_cs_n => DDR_cs_n_e,
        DDR_dm => DDR_dm_e,
        DDR_dq => DDR_dq_e,
        DDR_dqs_n => DDR_dqs_n_e,
        DDR_dqs_p => DDR_dqs_p_e,
        DDR_odt => DDR_odt_e,
        DDR_ras_n => DDR_ras_n_e,
        DDR_reset_n => DDR_reset_n_e,
        DDR_we_n => DDR_we_n_e,
        
        FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
        FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
        FIXED_IO_mio => FIXED_IO_mio,
        FIXED_IO_ps_clk => FIXED_IO_ps_clk,
        FIXED_IO_ps_porb => FIXED_IO_ps_porb,
        FIXED_IO_ps_srstb => FIXED_IO_ps_srstb 
  );

data_in_block: data_in_block_wrapper
     port map (
      BRAM_PORTB_addr => Data_In_Address,
      BRAM_PORTB_clk => gclk,
      BRAM_PORTB_din => x"00000000",
      BRAM_PORTB_dout => Symbol,
      BRAM_PORTB_en => Data_In_Enable,
      BRAM_PORTB_rst => Bram_Reset,
      BRAM_PORTB_we => x"0",
      
      DDR_addr => DDR_addr_i,
      DDR_ba => DDR_ba_i,
      DDR_cas_n => DDR_cas_n_i,
      DDR_ck_n => DDR_ck_n_i,
      DDR_ck_p => DDR_ck_p_i,
      DDR_cke => DDR_cke_i,
      DDR_cs_n => DDR_cs_n_i,
      DDR_dm => DDR_dm_i,
      DDR_dq => DDR_dq_i,
      DDR_dqs_n => DDR_dqs_n_i,
      DDR_dqs_p => DDR_dqs_p_i,
      DDR_odt => DDR_odt_i,
      DDR_ras_n => DDR_ras_n_i,
      DDR_reset_n => DDR_reset_n_i,
      DDR_we_n => DDR_we_n_i,
      
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio => FIXED_IO_mio,
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb
    );

data_out_block: data_out_block_wrapper
     port map (
      BRAM_PORTB_addr => Data_Out_Address,
      BRAM_PORTB_clk => gclk,
      BRAM_PORTB_din => Data_Out_To_Save,
      --BRAM_PORTB_dout(31 downto 0) => ,
      BRAM_PORTB_en => Out_Enable,
      BRAM_PORTB_rst => Bram_Reset,
      BRAM_PORTB_we => Write_Enable,
      
      DDR_addr => DDR_addr_o,
      DDR_ba => DDR_ba_o,
      DDR_cas_n => DDR_cas_n_o,
      DDR_ck_n => DDR_ck_n_o,
      DDR_ck_p => DDR_ck_p_o,
      DDR_cke => DDR_cke_o,
      DDR_cs_n => DDR_cs_n_o,
      DDR_dm => DDR_dm_o,
      DDR_dq => DDR_dq_o,
      DDR_dqs_n => DDR_dqs_n_o,
      DDR_dqs_p => DDR_dqs_p_o,
      DDR_odt => DDR_odt_o,
      DDR_ras_n => DDR_ras_n_o,
      DDR_reset_n => DDR_reset_n_o,
      DDR_we_n => DDR_we_n_o,
      
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio => FIXED_IO_mio,
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb
    );


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

main_process: process(gclk, current_state)
begin
    next_state <= current_state;
    
    case current_state is
        when IDLE =>
            Init_Middleware <= '1';
            next_state <= GO_DRIVER;
        when GO_DRIVER =>
            Init_Middleware <= '0';
            Start_Driver <= '1';
            next_state <= WAITING;
       when WAITING =>
            Start_Driver <= '1';
            next_state <= WAITING;
    end case;
    
end process; 

end compress;
