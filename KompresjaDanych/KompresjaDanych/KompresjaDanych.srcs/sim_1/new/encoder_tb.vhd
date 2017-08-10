----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2017 21:06:40
-- Design Name: 
-- Module Name: encoder_tb - test
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

entity encoder_tb is
--  Port ( );
end encoder_tb;

architecture test of encoder_tb is

component Compressor_tester is
Port ( 
            gclk : in STD_LOGIC;
            init : in STD_LOGIC;
            start : in STD_LOGIC;        
            
            --DDR for start
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
            
            --FIXED_IO
            FIXED_IO_ddr_vrn : inout STD_LOGIC;
            FIXED_IO_ddr_vrp : inout STD_LOGIC;
            FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
            FIXED_IO_ps_clk : inout STD_LOGIC;
            FIXED_IO_ps_porb : inout STD_LOGIC;
            FIXED_IO_ps_srstb : inout STD_LOGIC         
);
end component;

signal 
    Start, Init, Clk : STD_LOGIC;

signal
    DDR_cas_n,DDR_ck_n,DDR_ck_p,DDR_cke,DDR_cs_n, 
    DDR_odt, DDR_ras_n, DDR_reset_n, DDR_we_n, 
    FIXED_IO_ddr_vrn, FIXED_IO_ddr_vrp, FIXED_IO_ps_clk, 
    FIXED_IO_ps_porb, FIXED_IO_ps_srstb : STD_LOGIC;
    
signal
    DDR_dm, DDR_dqs_n, DDR_dqs_p : STD_LOGIC_VECTOR ( 3 downto 0 );

signal 
    DDR_ba : STD_LOGIC_VECTOR (2 downto 0);

signal
    DDR_addr : STD_LOGIC_VECTOR ( 14 downto 0);

signal 
    DDR_dq : STD_LOGIC_VECTOR ( 31 downto 0);

signal
    FIXED_IO_mio : STD_LOGIC_VECTOR( 53 downto 0);
begin

comp: Compressor_tester
    port map(
                gclk => Clk,
                init => Init,
                start => Start,
                
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
                
                --FIXED_IO
                FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
                FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp, 
                FIXED_IO_mio => FIXED_IO_mio,
                FIXED_IO_ps_clk => FIXED_IO_ps_clk, 
                FIXED_IO_ps_porb => FIXED_IO_ps_porb,
                FIXED_IO_ps_srstb => FIXED_IO_ps_srstb      

            );


clock_process: process
begin
    Clk <= '1';
    wait for 5 ns;
    Clk <= '0';
    wait for 5 ns;        
end process;

main_process: process
begin 
        Init <= '1';
    
    wait until rising_edge(Clk);
        
        Init <= '0';
        Start <= '1';
        
    wait until rising_edge(Clk);
    
        Start <= '0';
    wait;
end process;
end test;
