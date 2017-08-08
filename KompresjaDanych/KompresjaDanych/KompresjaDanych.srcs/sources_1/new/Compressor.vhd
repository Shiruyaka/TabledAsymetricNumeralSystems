----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.08.2017 17:45:29
-- Design Name: 
-- Module Name: Compressor - compress
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

entity Compressor is
    Port ( 
            gclk : in STD_LOGIC;
            
            --DDR and IO_FIXED to OUT
            DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
            DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
            DDR_cas_n : inout  STD_LOGIC;
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

component Encoder
Port (       
       init : in STD_LOGIC; -- reset
       start : in STD_LOGIC;
       clk : in STD_LOGIC;
       end_data : out STD_LOGIC;
       
       computed_state : out STD_LOGIC_VECTOR(15 downto 0);
       data_in : in STD_LOGIC_VECTOR (15 downto 0);
       data_out : out STD_LOGIC_VECTOR (15 downto 0);
       
       amount_bytes : in STD_LOGIC_VECTOR(31 downto 0);
       r_value : in STD_LOGIC_VECTOR(7 downto 0);
       
       produced_symbol : out STD_LOGIC;
       new_symbol : in STD_LOGIC
     );
end component;

--    signal 
--        BRAM_PORTB_clk, BRAM_PORTB_en, BRAM_PORTB_rst, DDR_cas_n, DDR_ck_n, DDR_ck_p,
--        DDR_cke, DDR_cs_n, DDR_odt, DDR_ras_n, DDR_reset_n, DDR_we_n, FIXED_IO_ddr_vrn,
--        FIXED_IO_ddr_vrp, FIXED_IO_ps_clk, FIXED_IO_ps_porb, FIXED_IO_ps_srstb : STD_LOGIC;
--    signal
--        BRAM_PORTB_addr, ENCODING_TABLE_addr, BRAM_PORTB_din, START_OUT, NB_OUT, ENCODING_TABLE_OUT, DDR_dq : STD_LOGIC_VECTOR ( 31 downto 0 );        
--    signal
--        BRAM_PORTB_we, DDR_dm, DDR_dqs_n, DDR_dqs_p :  STD_LOGIC_VECTOR ( 3 downto 0 );
--    signal
--        DDR_addr : STD_LOGIC_VECTOR ( 14 downto 0 );
--    signal
--        DDR_ba : STD_LOGIC_VECTOR ( 2 downto 0 );
--    signal
--        FIXED_IO_mio : STD_LOGIC_VECTOR ( 53 downto 0 );



component Driver
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
        data_out_address : out STD_LOGIC_VECTOR (31 downto 0)
        );
end component;

    signal
        Init_Encode, Start_Encoder, Data_Produced, New_Symbol, Roms_Enable, New_Data, Bram_Reset,
        StartRam_Enable, NbRam_Enable, EncodingRam_Enable, Start, Init_Middleware, Init_Encoder: STD_LOGIC;
        
    signal
        R_Value, Data_In, Data_out, Computed_State, Start_Nb_No : STD_LOGIC_VECTOR(15 downto 0);
    
    signal
        Amount_Bytes, Start_Nb_Address, State_Address, Symbol, Data_In_Address, 
        Data_Out_Address, Start_Address, Nb_Address, Encoding_Table_Address,
        Start_In, Nb_In, Encoding_In, Start_For_Encoder, Nb_For_Encoder, EncTable_For_Encoder  : STD_LOGIC_VECTOR(31 downto 0);
    
    signal
        Write_Enable : STD_LOGIC_VECTOR(3 downto 0);
begin


enc: Encoder
 Port map(
        clk => gclk,
        init => Init_Encoder,
        start => Start_Encoder,
        data_in => Data_In,
        data_out => Data_out,
        amount_bytes => Amount_Bytes,
        r_value => R_Value,
        produced_symbol => Data_Produced,
        new_symbol => New_symbol,
        computed_state => Computed_State
 );

middle: Driver
 Port map(
        gclk => gclk,
        start => Start,
        init => Init_Middleware,
        init_encoder => Init_Encoder,
        
        amount_bytes => Amount_Bytes,
        r_value => R_Value,
        computed_state => Computed_State,
        start_nb_no => Start_Nb_No,
        roms_enable => Roms_Enable,
        start_encoder => Start_Encoder,
        start_nb_address => Start_Nb_Address,
        state_address => State_Address,
        new_data => New_Data,
        data_in => Symbol,
        data_in_to_encoder => Data_In,
        data_in_address => Data_In_Address,
        data_produced => Data_Produced,
        data_out_from_encoder => Data_Out,
        data_out_address => Data_Out_Address,
        encoding_state_for_encoder => EncTable_For_Encoder,
        nb_for_encoder => Nb_For_Encoder,
        start_for_encoder => Start_For_Encoder
           
    );

start_block: start_block_wrapper
    Port map(  
        BRAM_PORTB_addr => Start_Address,
        BRAM_PORTB_clk => gclk,
        BRAM_PORTB_din => Start_In,
        BRAM_PORTB_dout => Start_For_Encoder,
        BRAM_PORTB_en => StartRam_Enable,
        BRAM_PORTB_rst => Bram_Reset,
        BRAM_PORTB_we => Write_Enable,
        
        DDR_addr => DDR_addr,
        DDR_ba => DDR_ba,
        DDR_cas_n => DDR_cas_n,
        DDR_ck_n => DDR_ck_n,
        DDR_ck_p => DDR_ck_p,
        DDR_cke => DDR_cke,
        DDR_cs_n => DDR_cs_n,
        DDR_dm => DDR_dm,
        DDR_dq => DDR_dq,
        DDR_dqs_n => DDR_dqs_n,
        DDR_dqs_p => DDR_dqs_p,
        DDR_odt => DDR_odt,
        DDR_ras_n => DDR_ras_n,
        DDR_reset_n => DDR_reset_n,
        DDR_we_n => DDR_we_n,
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
        BRAM_PORTB_dout => Nb_For_Encoder,
        BRAM_PORTB_en => NbRam_Enable,
        BRAM_PORTB_rst => Bram_Reset,
        BRAM_PORTB_we => Write_Enable,
        
        DDR_addr => DDR_addr,
        DDR_ba => DDR_ba,
        DDR_cas_n => DDR_cas_n,
        DDR_ck_n => DDR_ck_n,
        DDR_ck_p => DDR_ck_p,
        DDR_cke => DDR_cke,
        DDR_cs_n => DDR_cs_n,
        DDR_dm => DDR_dm,
        DDR_dq => DDR_dq,
        DDR_dqs_n => DDR_dqs_n,
        DDR_dqs_p => DDR_dqs_p,
        DDR_odt => DDR_odt,
        DDR_ras_n => DDR_ras_n,
        DDR_reset_n => DDR_reset_n,
        DDR_we_n => DDR_we_n,
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
        BRAM_PORTB_dout => EncTable_For_Encoder,
        BRAM_PORTB_en => EncodingRam_Enable,
        BRAM_PORTB_rst => Bram_Reset,
        BRAM_PORTB_we => Write_Enable,
        
        DDR_addr => DDR_addr,
        DDR_ba => DDR_ba,
        DDR_cas_n => DDR_cas_n,
        DDR_ck_n => DDR_ck_n,
        DDR_ck_p => DDR_ck_p,
        DDR_cke => DDR_cke,
        DDR_cs_n => DDR_cs_n,
        DDR_dm => DDR_dm,
        DDR_dq => DDR_dq,
        DDR_dqs_n => DDR_dqs_n,
        DDR_dqs_p => DDR_dqs_p,
        DDR_odt => DDR_odt,
        DDR_ras_n => DDR_ras_n,
        DDR_reset_n => DDR_reset_n,
        DDR_we_n => DDR_we_n,
        FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
        FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
        FIXED_IO_mio => FIXED_IO_mio,
        FIXED_IO_ps_clk => FIXED_IO_ps_clk,
        FIXED_IO_ps_porb => FIXED_IO_ps_porb,
        FIXED_IO_ps_srstb => FIXED_IO_ps_srstb 
  );



end compress;
