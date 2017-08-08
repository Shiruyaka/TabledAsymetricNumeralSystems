-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Thu Aug 03 23:53:54 2017
-- Host        : DESKTOP-5KNUINE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ start_memblock_sim_netlist.vhdl
-- Design      : start_memblock
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_fsm is
  port (
    s_axi_arready : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_2_out_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\ : out STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \gaxi_full_sm.arlen_cntr_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gaxi_full_sm.arlen_cntr_reg[6]\ : out STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_aclk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_arsize_0__s_port_]\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_2_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_arsize[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[2]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_reg\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    incr_en_r : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gaxi_full_sm.arlen_cntr_reg[2]\ : in STD_LOGIC;
    \s_axi_arlen_2__s_port_\ : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[3]\ : in STD_LOGIC;
    \s_axi_arlen[2]_0\ : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[4]\ : in STD_LOGIC;
    \s_axi_arlen_4__s_port_\ : in STD_LOGIC;
    \s_axi_arsize_1__s_port_]\ : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[6]_0\ : in STD_LOGIC;
    \s_axi_arlen_0__s_port_\ : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi_arlen[0]_0\ : in STD_LOGIC;
    \s_axi_arlen[0]_1\ : in STD_LOGIC;
    \s_axi_arsize_2__s_port_\ : in STD_LOGIC;
    \s_axi_arlen[0]_2\ : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_fsm is
  signal \^addrbwraddr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\ : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ar_ready_c : STD_LOGIC;
  signal \gaxi_full_sm.S_AXI_RLAST_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.S_AXI_RLAST_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.S_AXI_RLAST_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.ar_ready_r_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.ar_ready_r_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.ar_ready_r_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.ar_ready_r_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[2]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[7]_i_5_n_0\ : STD_LOGIC;
  signal \^gaxi_full_sm.arlen_cntr_reg[6]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_6_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6_n_0\ : STD_LOGIC;
  signal \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\ : STD_LOGIC;
  signal \gaxi_full_sm.outstanding_read_r_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.present_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.present_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.r_valid_r_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.r_valid_r_i_2_n_0\ : STD_LOGIC;
  signal outstanding_read_r : STD_LOGIC;
  signal \^p_2_out_0\ : STD_LOGIC;
  signal present_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_axi_arlen_0__s_net_1\ : STD_LOGIC;
  signal \s_axi_arlen_2__s_net_1\ : STD_LOGIC;
  signal \s_axi_arlen_4__s_net_1\ : STD_LOGIC;
  signal \s_axi_arsize_0__s_net_1\ : STD_LOGIC;
  signal \s_axi_arsize_1__s_net_1\ : STD_LOGIC;
  signal \s_axi_arsize_2__s_net_1\ : STD_LOGIC;
  signal \^s_axi_rlast\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gaxi_full_sm.ar_ready_r_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gaxi_full_sm.ar_ready_r_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \grid.S_AXI_RID[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \grid.ar_id_r[3]_i_1\ : label is "soft_lutpair0";
begin
  ADDRBWRADDR(9 downto 0) <= \^addrbwraddr\(9 downto 0);
  AR(0) <= \^ar\(0);
  E(0) <= \^e\(0);
  \gaxi_full_sm.arlen_cntr_reg[6]\ <= \^gaxi_full_sm.arlen_cntr_reg[6]\;
  \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\ <= \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\;
  p_2_out_0 <= \^p_2_out_0\;
  \s_axi_arlen_0__s_net_1\ <= \s_axi_arlen_0__s_port_\;
  \s_axi_arlen_2__s_net_1\ <= \s_axi_arlen_2__s_port_\;
  \s_axi_arlen_4__s_net_1\ <= \s_axi_arlen_4__s_port_\;
  \s_axi_arsize_0__s_net_1\ <= \s_axi_arsize_0__s_port_]\;
  \s_axi_arsize_1__s_net_1\ <= \s_axi_arsize_1__s_port_]\;
  \s_axi_arsize_2__s_net_1\ <= \s_axi_arsize_2__s_port_\;
  s_axi_rlast <= \^s_axi_rlast\;
  s_axi_rvalid <= \^s_axi_rvalid\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA45EF40EF40EF40"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(6),
      I1 => s_axi_araddr(11),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I3 => p_2_in(11),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9]\,
      I5 => p_2_in(10),
      O => \^addrbwraddr\(9)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA45EF40"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(6),
      I1 => s_axi_araddr(10),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I3 => p_2_in(10),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9]\,
      O => \^addrbwraddr\(8)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA45EF40"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(6),
      I1 => s_axi_araddr(9),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I3 => p_2_in(9),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8]\,
      O => \^addrbwraddr\(7)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA45EF40EF40EF40"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(6),
      I1 => s_axi_araddr(8),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I3 => p_2_in(8),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6]\,
      I5 => p_2_in(7),
      O => \^addrbwraddr\(6)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40EA45EF40EF40"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(6),
      I1 => s_axi_araddr(7),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I3 => p_2_in(7),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4]\,
      I5 => p_2_in(6),
      O => \^addrbwraddr\(5)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA4045"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(5),
      I1 => s_axi_araddr(6),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4]\,
      I4 => p_2_in(6),
      O => \^addrbwraddr\(4)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF40EA45"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(4),
      I1 => s_axi_araddr(5),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I3 => p_2_in(5),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3]\,
      O => \^addrbwraddr\(3)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF40EA45"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(3),
      I1 => s_axi_araddr(4),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I3 => p_2_in(4),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[2]\,
      O => \^addrbwraddr\(2)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF40EA45"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(2),
      I1 => s_axi_araddr(3),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I3 => p_2_in(3),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_reg\,
      O => \^addrbwraddr\(1)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA45EF40EF40EF40"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(1),
      I1 => s_axi_araddr(2),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I3 => p_2_in(2),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0\(0),
      I5 => incr_en_r,
      O => \^addrbwraddr\(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1011FFFF"
    )
        port map (
      I0 => present_state(0),
      I1 => outstanding_read_r,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      I4 => present_state(1),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\
    );
\gaxi_full_sm.S_AXI_RLAST_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4F4F400F4F4"
    )
        port map (
      I0 => \gaxi_full_sm.S_AXI_RLAST_i_2_n_0\,
      I1 => \gaxi_full_sm.ar_ready_r_i_2_n_0\,
      I2 => \gaxi_full_sm.S_AXI_RLAST_i_3_n_0\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid\,
      I5 => \^s_axi_rlast\,
      O => \gaxi_full_sm.S_AXI_RLAST_i_1_n_0\
    );
\gaxi_full_sm.S_AXI_RLAST_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFF5545FFFF"
    )
        port map (
      I0 => present_state(1),
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_5_n_0\,
      I2 => s_axi_arvalid,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_6_n_0\,
      I4 => present_state(0),
      I5 => \gaxi_full_sm.ar_ready_r_i_3_n_0\,
      O => \gaxi_full_sm.S_AXI_RLAST_i_2_n_0\
    );
\gaxi_full_sm.S_AXI_RLAST_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_3_n_0\,
      I1 => present_state(1),
      I2 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_6_n_0\,
      I3 => s_axi_arvalid,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_5_n_0\,
      I5 => present_state(0),
      O => \gaxi_full_sm.S_AXI_RLAST_i_3_n_0\
    );
\gaxi_full_sm.S_AXI_RLAST_reg\: unisim.vcomponents.FDCE
     port map (
      C => s_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \gaxi_full_sm.S_AXI_RLAST_i_1_n_0\,
      Q => \^s_axi_rlast\
    );
\gaxi_full_sm.ar_ready_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A008A000000FF00"
    )
        port map (
      I0 => \gaxi_full_sm.ar_ready_r_i_2_n_0\,
      I1 => present_state(1),
      I2 => \gaxi_full_sm.ar_ready_r_i_3_n_0\,
      I3 => \gaxi_full_sm.ar_ready_r_i_4_n_0\,
      I4 => \gaxi_full_sm.ar_ready_r_i_5_n_0\,
      I5 => present_state(0),
      O => ar_ready_c
    );
\gaxi_full_sm.ar_ready_r_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0004FFFF"
    )
        port map (
      I0 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(7),
      I1 => s_axi_rready,
      I2 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(6),
      I3 => \^gaxi_full_sm.arlen_cntr_reg[6]\,
      I4 => present_state(1),
      O => \gaxi_full_sm.ar_ready_r_i_2_n_0\
    );
\gaxi_full_sm.ar_ready_r_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      O => \gaxi_full_sm.ar_ready_r_i_3_n_0\
    );
\gaxi_full_sm.ar_ready_r_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFFFFFF"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(2),
      I3 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_5_n_0\,
      I4 => present_state(1),
      I5 => s_axi_arvalid,
      O => \gaxi_full_sm.ar_ready_r_i_4_n_0\
    );
\gaxi_full_sm.ar_ready_r_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAE0F00"
    )
        port map (
      I0 => outstanding_read_r,
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_rready,
      I3 => s_axi_arvalid,
      I4 => present_state(1),
      O => \gaxi_full_sm.ar_ready_r_i_5_n_0\
    );
\gaxi_full_sm.ar_ready_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => ar_ready_c,
      Q => s_axi_arready
    );
\gaxi_full_sm.arlen_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22627767"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I1 => s_axi_arlen(0),
      I2 => s_axi_arvalid,
      I3 => present_state(1),
      I4 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(0),
      O => \gaxi_full_sm.arlen_cntr_reg[7]\(0)
    );
\gaxi_full_sm.arlen_cntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B7B484B484B4B7"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_arlen(1),
      I3 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I4 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(0),
      I5 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(1),
      O => \gaxi_full_sm.arlen_cntr_reg[7]\(1)
    );
\gaxi_full_sm.arlen_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(2),
      I3 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I4 => \gaxi_full_sm.arlen_cntr[2]_i_2_n_0\,
      O => \gaxi_full_sm.arlen_cntr_reg[7]\(2)
    );
\gaxi_full_sm.arlen_cntr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFB08080808FB"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arvalid,
      I2 => present_state(1),
      I3 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(0),
      I4 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(1),
      I5 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(2),
      O => \gaxi_full_sm.arlen_cntr[2]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B7B484B484B4B7"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_6_n_0\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_arlen(3),
      I3 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I4 => \gaxi_full_sm.arlen_cntr_reg[2]\,
      I5 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(3),
      O => \gaxi_full_sm.arlen_cntr_reg[7]\(3)
    );
\gaxi_full_sm.arlen_cntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7848787B787B7848"
    )
        port map (
      I0 => \s_axi_arlen_2__s_net_1\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_arlen(4),
      I3 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I4 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(4),
      I5 => \gaxi_full_sm.arlen_cntr_reg[3]\,
      O => \gaxi_full_sm.arlen_cntr_reg[7]\(4)
    );
\gaxi_full_sm.arlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B7B484B484B4B7"
    )
        port map (
      I0 => \s_axi_arlen[2]_0\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_arlen(5),
      I3 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I4 => \gaxi_full_sm.arlen_cntr_reg[4]\,
      I5 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(5),
      O => \gaxi_full_sm.arlen_cntr_reg[7]\(5)
    );
\gaxi_full_sm.arlen_cntr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"787B78487848787B"
    )
        port map (
      I0 => \s_axi_arlen_4__s_net_1\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_arlen(6),
      I3 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I4 => \^gaxi_full_sm.arlen_cntr_reg[6]\,
      I5 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(6),
      O => \gaxi_full_sm.arlen_cntr_reg[7]\(6)
    );
\gaxi_full_sm.arlen_cntr[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(5),
      I1 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(3),
      I2 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(0),
      I3 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(1),
      I4 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(2),
      I5 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(4),
      O => \^gaxi_full_sm.arlen_cntr_reg[6]\
    );
\gaxi_full_sm.arlen_cntr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4FFF7FFF40FF77"
    )
        port map (
      I0 => \gaxi_full_sm.ar_ready_r_i_3_n_0\,
      I1 => present_state(0),
      I2 => present_state(1),
      I3 => \gaxi_full_sm.arlen_cntr_reg[6]_0\,
      I4 => \gaxi_full_sm.ar_ready_r_i_4_n_0\,
      I5 => s_axi_arvalid,
      O => \gaxi_full_sm.arlen_cntr_reg[0]\(0)
    );
\gaxi_full_sm.arlen_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => \s_axi_arlen[2]_0\,
      I2 => s_axi_arlen(5),
      I3 => s_axi_arlen(6),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I5 => \gaxi_full_sm.arlen_cntr[7]_i_5_n_0\,
      O => \gaxi_full_sm.arlen_cntr_reg[7]\(7)
    );
\gaxi_full_sm.arlen_cntr[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FB08FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => s_axi_arvalid,
      I2 => present_state(1),
      I3 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(7),
      I4 => \^gaxi_full_sm.arlen_cntr_reg[6]\,
      I5 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(6),
      O => \gaxi_full_sm.arlen_cntr[7]_i_5_n_0\
    );
\gaxi_full_sm.aw_ready_r_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \^ar\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABABFFAB"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_3_n_0\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_4_n_0\,
      I2 => present_state(0),
      I3 => \gaxi_full_sm.ar_ready_r_i_2_n_0\,
      I4 => \gaxi_full_sm.S_AXI_RLAST_i_2_n_0\,
      I5 => \^p_2_out_0\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1]\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022200000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => present_state(1),
      I2 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_5_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_6_n_0\,
      I4 => s_axi_arburst(1),
      I5 => s_axi_arburst(0),
      O => \^p_2_out_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => outstanding_read_r,
      I3 => present_state(1),
      I4 => present_state(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_3_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => present_state(1),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(2),
      I4 => s_axi_arvalid,
      I5 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_5_n_0\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_4_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arlen(4),
      I2 => s_axi_arlen(7),
      I3 => s_axi_arlen(6),
      I4 => s_axi_arlen(5),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_5_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_6_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^p_2_out_0\,
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arlen(1),
      I5 => \s_axi_arlen[0]_1\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020200000000"
    )
        port map (
      I0 => \^p_2_out_0\,
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(1),
      I5 => \s_axi_arlen[0]_1\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\(1)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_2_out_0\,
      I1 => \s_axi_arlen[0]_2\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\(2)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888888"
    )
        port map (
      I0 => \s_axi_arlen[0]_0\,
      I1 => \^p_2_out_0\,
      I2 => \s_axi_arlen[0]_1\,
      I3 => \s_axi_arsize_2__s_net_1\,
      I4 => s_axi_arlen(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\(3)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202AA022202AA"
    )
        port map (
      I0 => \^p_2_out_0\,
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => \s_axi_arlen_0__s_net_1\,
      I4 => s_axi_arlen(2),
      I5 => s_axi_arsize(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\(4)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => \^p_2_out_0\,
      I1 => \s_axi_arlen_0__s_net_1\,
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(2),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\(5)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4B0B1F4F5B0A0"
    )
        port map (
      I0 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(6),
      I2 => s_axi_araddr(10),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I4 => p_2_in(10),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(8)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4B0B1F4F5B0A0"
    )
        port map (
      I0 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(6),
      I2 => s_axi_araddr(11),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I4 => p_2_in(11),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(9)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => present_state(1),
      I3 => \^addrbwraddr\(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F5B0A0F4E4B0B1"
    )
        port map (
      I0 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(2),
      I2 => s_axi_araddr(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I4 => p_2_in(3),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_reg\,
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(1)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F5B0A0F4E4B0B1"
    )
        port map (
      I0 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(3),
      I2 => s_axi_araddr(4),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I4 => p_2_in(4),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[2]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(2)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F5B0A0F4E4B0B1"
    )
        port map (
      I0 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(4),
      I2 => s_axi_araddr(5),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I4 => p_2_in(5),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(3)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F5F4E4B0A0B0B1"
    )
        port map (
      I0 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(5),
      I2 => s_axi_araddr(6),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4]\,
      I5 => p_2_in(6),
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(4)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4B0B1F4F5B0A0"
    )
        port map (
      I0 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(6),
      I2 => s_axi_araddr(7),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I4 => p_2_in(7),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(5)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4B0B1F4F5B0A0"
    )
        port map (
      I0 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(6),
      I2 => s_axi_araddr(8),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I4 => p_2_in(8),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(6)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4B0B1F4F5B0A0"
    )
        port map (
      I0 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(6),
      I2 => s_axi_araddr(9),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I4 => p_2_in(9),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(7)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"787B78487848787B"
    )
        port map (
      I0 => \s_axi_arsize[0]_0\(0),
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_araddr(0),
      I3 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2]\(0),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2_n_0\,
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I2 => p_2_in(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B484B4B7B4B7B484"
    )
        port map (
      I0 => \s_axi_arsize_0__s_net_1\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_araddr(1),
      I3 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0\,
      I5 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4_n_0\,
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\(1)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070007000700000"
    )
        port map (
      I0 => \gaxi_full_sm.ar_ready_r_i_3_n_0\,
      I1 => present_state(0),
      I2 => s_axi_arvalid,
      I3 => present_state(1),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_5_n_0\,
      I5 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_6_n_0\,
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2]\(1),
      I1 => p_2_in(1),
      I2 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(0),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I4 => s_axi_araddr(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBAABBBFBBBFBB"
    )
        port map (
      I0 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      I1 => \gaxi_full_sm.ar_ready_r_i_4_n_0\,
      I2 => \gaxi_full_sm.ar_ready_r_i_2_n_0\,
      I3 => present_state(0),
      I4 => s_axi_rready,
      I5 => \^s_axi_rvalid\,
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]_0\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABBBEBEEE"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2]\(2),
      I2 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2]\(1),
      I5 => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\(2)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000E000000"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_6_n_0\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_5_n_0\,
      I2 => present_state(1),
      I3 => s_axi_arvalid,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6_n_0\,
      I5 => \s_axi_arsize_1__s_net_1\,
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2]\(0),
      I1 => p_2_in(0),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I3 => s_axi_araddr(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I2 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(0),
      I3 => p_2_in(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => present_state(0),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6_n_0\
    );
\gaxi_full_sm.outstanding_read_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000008080C000000"
    )
        port map (
      I0 => \gaxi_full_sm.r_valid_r_i_2_n_0\,
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_rready,
      I3 => outstanding_read_r,
      I4 => present_state(1),
      I5 => present_state(0),
      O => \gaxi_full_sm.outstanding_read_r_i_1_n_0\
    );
\gaxi_full_sm.outstanding_read_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \gaxi_full_sm.outstanding_read_r_i_1_n_0\,
      Q => outstanding_read_r
    );
\gaxi_full_sm.present_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECE2200EEEE2222"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => present_state(1),
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      I4 => present_state(0),
      I5 => \gaxi_full_sm.r_valid_r_i_2_n_0\,
      O => \gaxi_full_sm.present_state[0]_i_1__0_n_0\
    );
\gaxi_full_sm.present_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4FEF4FEFEFEFEF"
    )
        port map (
      I0 => present_state(0),
      I1 => \gaxi_full_sm.ar_ready_r_i_5_n_0\,
      I2 => \gaxi_full_sm.ar_ready_r_i_4_n_0\,
      I3 => \gaxi_full_sm.ar_ready_r_i_3_n_0\,
      I4 => present_state(1),
      I5 => \gaxi_full_sm.ar_ready_r_i_2_n_0\,
      O => \gaxi_full_sm.present_state[1]_i_1__0_n_0\
    );
\gaxi_full_sm.present_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \gaxi_full_sm.present_state[0]_i_1__0_n_0\,
      Q => present_state(0)
    );
\gaxi_full_sm.present_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \gaxi_full_sm.present_state[1]_i_1__0_n_0\,
      Q => present_state(1)
    );
\gaxi_full_sm.r_valid_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAABAAA"
    )
        port map (
      I0 => \^e\(0),
      I1 => present_state(1),
      I2 => \gaxi_full_sm.r_valid_r_i_2_n_0\,
      I3 => present_state(0),
      I4 => s_axi_rready,
      I5 => \^s_axi_rvalid\,
      O => \gaxi_full_sm.r_valid_r_i_1_n_0\
    );
\gaxi_full_sm.r_valid_r_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_5_n_0\,
      I1 => s_axi_arvalid,
      I2 => s_axi_arlen(2),
      I3 => s_axi_arlen(1),
      I4 => s_axi_arlen(0),
      O => \gaxi_full_sm.r_valid_r_i_2_n_0\
    );
\gaxi_full_sm.r_valid_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \gaxi_full_sm.r_valid_r_i_1_n_0\,
      Q => \^s_axi_rvalid\
    );
\grid.S_AXI_RID[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
        port map (
      I0 => Q(0),
      I1 => present_state(1),
      I2 => s_axi_arvalid,
      I3 => \^e\(0),
      I4 => s_axi_arid(0),
      O => D(0)
    );
\grid.S_AXI_RID[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
        port map (
      I0 => Q(1),
      I1 => present_state(1),
      I2 => s_axi_arvalid,
      I3 => \^e\(0),
      I4 => s_axi_arid(1),
      O => D(1)
    );
\grid.S_AXI_RID[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
        port map (
      I0 => Q(2),
      I1 => present_state(1),
      I2 => s_axi_arvalid,
      I3 => \^e\(0),
      I4 => s_axi_arid(2),
      O => D(2)
    );
\grid.S_AXI_RID[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDD0FFDD00D000"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => outstanding_read_r,
      I3 => present_state(1),
      I4 => present_state(0),
      I5 => s_axi_arvalid,
      O => \^e\(0)
    );
\grid.S_AXI_RID[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
        port map (
      I0 => Q(3),
      I1 => present_state(1),
      I2 => s_axi_arvalid,
      I3 => \^e\(0),
      I4 => s_axi_arid(3),
      O => D(3)
    );
\grid.ar_id_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => present_state(1),
      O => \^gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_fsm is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    addr_en_c : out STD_LOGIC;
    \gaxi_bid_gen.axi_bid_array_reg[2][3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    \gaxif_ms_addr_gen.bmg_address_r_reg[11]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gaxif_wlast_gen.awlen_cntr_r_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gaxif_ms_addr_gen.next_address_r_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \gaxi_bid_gen.axi_bid_array_reg[0][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_bid_gen.axi_bid_array_reg[3][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_bid_gen.axi_bid_array_reg[1][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bvalid_c : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_awlen_7__s_port_]\ : in STD_LOGIC;
    \s_axi_awsize[2]\ : in STD_LOGIC;
    \s_axi_awlen[7]_0\ : in STD_LOGIC;
    \s_axi_awlen[7]_1\ : in STD_LOGIC;
    \s_axi_awlen[7]_2\ : in STD_LOGIC;
    \s_axi_awlen[7]_3\ : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gaxif_wlast_gen.awlen_cntr_r_reg[5]\ : in STD_LOGIC;
    \gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gaxif_ms_addr_gen.next_address_r_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gaxif_ms_addr_gen.bmg_address_r_reg[8]\ : in STD_LOGIC;
    \gaxif_ms_addr_gen.bmg_address_r_reg[7]\ : in STD_LOGIC;
    \gaxif_ms_addr_gen.bmg_address_r_reg[4]\ : in STD_LOGIC;
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxif_ms_addr_gen.bmg_address_r_reg[3]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    incr_en_r : in STD_LOGIC;
    \bvalid_count_r_reg[2]\ : in STD_LOGIC;
    \bvalid_count_r_reg[1]\ : in STD_LOGIC;
    \bvalid_count_r_reg[0]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_fsm is
  signal \^device_7series.no_bmm_info.sdp.simple_prim36.ram\ : STD_LOGIC;
  signal \^addr_en_c\ : STD_LOGIC;
  signal aw_ready_c : STD_LOGIC;
  signal \gaxi_bvalid_id_r.bvalid_d1_c_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.aw_ready_r_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.aw_ready_r_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.present_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.present_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.present_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.present_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.present_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.present_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.present_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_3_n_0\ : STD_LOGIC;
  signal present_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_axi_awlen_7__s_net_1\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal w_ready_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gaxi_bid_gen.axi_bid_array[0][3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.axi_bid_array[1][3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.axi_bid_array[2][3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.axi_bid_array[3][3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gaxi_full_sm.present_state[1]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gaxi_full_sm.present_state[1]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gaxi_full_sm.w_ready_r_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[11]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.bmg_address_r[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.bmg_address_r[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.next_address_r[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[7]_i_1\ : label is "soft_lutpair16";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ <= \^device_7series.no_bmm_info.sdp.simple_prim36.ram\;
  addr_en_c <= \^addr_en_c\;
  \s_axi_awlen_7__s_net_1\ <= \s_axi_awlen_7__s_port_]\;
  s_axi_awready <= \^s_axi_awready\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => present_state(0),
      I1 => present_state(1),
      I2 => s_axi_wvalid,
      O => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\
    );
\gaxi_bid_gen.axi_bid_array[0][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\,
      I3 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\,
      O => \gaxi_bid_gen.axi_bid_array_reg[0][0]\(0)
    );
\gaxi_bid_gen.axi_bid_array[1][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\,
      I3 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\,
      O => \gaxi_bid_gen.axi_bid_array_reg[1][0]\(0)
    );
\gaxi_bid_gen.axi_bid_array[2][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\,
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\,
      O => \gaxi_bid_gen.axi_bid_array_reg[2][3]\(0)
    );
\gaxi_bid_gen.axi_bid_array[3][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\,
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\,
      O => \gaxi_bid_gen.axi_bid_array_reg[3][0]\(0)
    );
\gaxi_bvalid_id_r.bvalid_d1_c_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(7),
      I3 => Q(6),
      I4 => \gaxi_bvalid_id_r.bvalid_d1_c_i_2_n_0\,
      I5 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\,
      O => bvalid_c
    );
\gaxi_bvalid_id_r.bvalid_d1_c_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \gaxi_bvalid_id_r.bvalid_d1_c_i_2_n_0\
    );
\gaxi_full_sm.aw_ready_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCC03001D111D11"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => present_state(1),
      I2 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I3 => \gaxi_full_sm.aw_ready_r_i_4_n_0\,
      I4 => s_axi_bready,
      I5 => present_state(0),
      O => aw_ready_c
    );
\gaxi_full_sm.aw_ready_r_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \bvalid_count_r_reg[0]\,
      I1 => \bvalid_count_r_reg[1]\,
      I2 => \bvalid_count_r_reg[2]\,
      O => \gaxi_full_sm.aw_ready_r_i_3_n_0\
    );
\gaxi_full_sm.aw_ready_r_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(7),
      I3 => Q(6),
      I4 => \gaxi_bvalid_id_r.bvalid_d1_c_i_2_n_0\,
      I5 => s_axi_wvalid,
      O => \gaxi_full_sm.aw_ready_r_i_4_n_0\
    );
\gaxi_full_sm.aw_ready_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AS(0),
      D => aw_ready_c,
      Q => \^s_axi_awready\
    );
\gaxi_full_sm.present_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50505C5CFC00FCF0"
    )
        port map (
      I0 => s_axi_bready,
      I1 => s_axi_wvalid,
      I2 => present_state(0),
      I3 => s_axi_awvalid,
      I4 => \gaxi_full_sm.present_state[0]_i_2_n_0\,
      I5 => present_state(1),
      O => \gaxi_full_sm.present_state[0]_i_1_n_0\
    );
\gaxi_full_sm.present_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080008080808"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \gaxi_bvalid_id_r.bvalid_d1_c_i_2_n_0\,
      I2 => \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_3_n_0\,
      I3 => \bvalid_count_r_reg[2]\,
      I4 => \bvalid_count_r_reg[1]\,
      I5 => \bvalid_count_r_reg[0]\,
      O => \gaxi_full_sm.present_state[0]_i_2_n_0\
    );
\gaxi_full_sm.present_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFB3B0B3B0"
    )
        port map (
      I0 => \gaxi_full_sm.present_state[1]_i_2_n_0\,
      I1 => s_axi_wvalid,
      I2 => \gaxi_full_sm.present_state[1]_i_3_n_0\,
      I3 => \gaxi_full_sm.present_state[1]_i_4_n_0\,
      I4 => \gaxi_full_sm.present_state[1]_i_5_n_0\,
      I5 => present_state(0),
      O => \gaxi_full_sm.present_state[1]_i_1_n_0\
    );
\gaxi_full_sm.present_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \gaxi_bvalid_id_r.bvalid_d1_c_i_2_n_0\,
      I1 => Q(6),
      I2 => Q(7),
      I3 => Q(4),
      I4 => Q(5),
      O => \gaxi_full_sm.present_state[1]_i_2_n_0\
    );
\gaxi_full_sm.present_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
        port map (
      I0 => present_state(1),
      I1 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I2 => \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_3_n_0\,
      I3 => \gaxi_bvalid_id_r.bvalid_d1_c_i_2_n_0\,
      I4 => s_axi_wvalid,
      O => \gaxi_full_sm.present_state[1]_i_3_n_0\
    );
\gaxi_full_sm.present_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => present_state(1),
      O => \gaxi_full_sm.present_state[1]_i_4_n_0\
    );
\gaxi_full_sm.present_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB8BBBBBBBBBBB"
    )
        port map (
      I0 => s_axi_bready,
      I1 => present_state(1),
      I2 => s_axi_wvalid,
      I3 => \gaxi_bvalid_id_r.bvalid_d1_c_i_2_n_0\,
      I4 => \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_3_n_0\,
      I5 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      O => \gaxi_full_sm.present_state[1]_i_5_n_0\
    );
\gaxi_full_sm.present_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AS(0),
      D => \gaxi_full_sm.present_state[0]_i_1_n_0\,
      Q => present_state(0)
    );
\gaxi_full_sm.present_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AS(0),
      D => \gaxi_full_sm.present_state[1]_i_1_n_0\,
      Q => present_state(1)
    );
\gaxi_full_sm.w_ready_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003370FC"
    )
        port map (
      I0 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I1 => present_state(0),
      I2 => s_axi_awvalid,
      I3 => \gaxi_full_sm.aw_ready_r_i_4_n_0\,
      I4 => present_state(1),
      O => w_ready_c
    );
\gaxi_full_sm.w_ready_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AS(0),
      D => w_ready_c,
      Q => s_axi_wready
    );
\gaxif_ms_addr_gen.addr_cnt_enb[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => \gaxi_full_sm.aw_ready_r_i_4_n_0\,
      I1 => s_axi_awburst(0),
      I2 => s_axi_awburst(1),
      I3 => \^addr_en_c\,
      O => \gaxif_ms_addr_gen.addr_cnt_enb_reg[2]\(0)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^addr_en_c\,
      I1 => s_axi_awburst(1),
      I2 => s_axi_awburst(0),
      O => D(5)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      I2 => \^addr_en_c\,
      I3 => \s_axi_awlen[7]_3\,
      O => D(0)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      I2 => \^addr_en_c\,
      I3 => \s_axi_awlen[7]_2\,
      O => D(1)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      I2 => \^addr_en_c\,
      I3 => \s_axi_awlen[7]_1\,
      O => D(2)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      I2 => \^addr_en_c\,
      I3 => \s_axi_awlen[7]_0\,
      O => D(3)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40004040"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      I2 => \^addr_en_c\,
      I3 => \s_axi_awlen_7__s_net_1\,
      I4 => \s_axi_awsize[2]\,
      O => D(4)
    );
\gaxif_ms_addr_gen.bmg_address_r[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => \^addr_en_c\,
      I2 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(6),
      I3 => \gaxif_ms_addr_gen.bmg_address_r_reg[8]\,
      I4 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(5),
      O => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(8)
    );
\gaxif_ms_addr_gen.bmg_address_r[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => \^addr_en_c\,
      I2 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(7),
      I3 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(5),
      I4 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(6),
      I5 => \gaxif_ms_addr_gen.bmg_address_r_reg[8]\,
      O => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(9)
    );
\gaxif_ms_addr_gen.bmg_address_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88BB8B8B8"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^addr_en_c\,
      I2 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(0),
      I3 => \gaxif_ms_addr_gen.next_address_r_reg[2]_0\(2),
      I4 => incr_en_r,
      I5 => \gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\(0),
      O => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(0)
    );
\gaxif_ms_addr_gen.bmg_address_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => \^addr_en_c\,
      I2 => ADDRARDADDR(0),
      O => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(1)
    );
\gaxif_ms_addr_gen.bmg_address_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \^addr_en_c\,
      I2 => ADDRARDADDR(1),
      O => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(2)
    );
\gaxif_ms_addr_gen.bmg_address_r[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => \^addr_en_c\,
      I2 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(1),
      I3 => \gaxif_ms_addr_gen.bmg_address_r_reg[3]\,
      I4 => \gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\(1),
      O => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(3)
    );
\gaxif_ms_addr_gen.bmg_address_r[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => \^addr_en_c\,
      I2 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(2),
      I3 => \gaxif_ms_addr_gen.bmg_address_r_reg[4]\,
      I4 => \gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\(2),
      O => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(4)
    );
\gaxif_ms_addr_gen.bmg_address_r[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B88BB8B8"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => \^addr_en_c\,
      I2 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(3),
      I3 => \gaxif_ms_addr_gen.bmg_address_r_reg[4]\,
      I4 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(2),
      I5 => \gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\(3),
      O => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(5)
    );
\gaxif_ms_addr_gen.bmg_address_r[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \^addr_en_c\,
      I2 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(4),
      I3 => \gaxif_ms_addr_gen.bmg_address_r_reg[7]\,
      O => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(6)
    );
\gaxif_ms_addr_gen.bmg_address_r[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => \^addr_en_c\,
      I2 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(5),
      I3 => \gaxif_ms_addr_gen.bmg_address_r_reg[8]\,
      O => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(7)
    );
\gaxif_ms_addr_gen.next_address_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^addr_en_c\,
      I2 => \gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\(0),
      I3 => \gaxif_ms_addr_gen.next_address_r_reg[2]_0\(0),
      O => \gaxif_ms_addr_gen.next_address_r_reg[2]\(0)
    );
\gaxif_ms_addr_gen.next_address_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8888BBB8BBBB888"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \^addr_en_c\,
      I2 => \gaxif_ms_addr_gen.next_address_r_reg[2]_0\(0),
      I3 => \gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\(0),
      I4 => \gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\(1),
      I5 => \gaxif_ms_addr_gen.next_address_r_reg[2]_0\(1),
      O => \gaxif_ms_addr_gen.next_address_r_reg[2]\(1)
    );
\gaxif_ms_addr_gen.next_address_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAEAEAA"
    )
        port map (
      I0 => \^addr_en_c\,
      I1 => s_axi_wvalid,
      I2 => \gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => present_state(1),
      I4 => present_state(0),
      O => \gaxif_ms_addr_gen.bmg_address_r_reg[11]\(0)
    );
\gaxif_ms_addr_gen.next_address_r[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001777E888"
    )
        port map (
      I0 => \gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\(1),
      I1 => \gaxif_ms_addr_gen.next_address_r_reg[2]_0\(1),
      I2 => \gaxif_ms_addr_gen.next_address_r_reg[2]_0\(0),
      I3 => \gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\(0),
      I4 => \gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\(2),
      I5 => \^addr_en_c\,
      O => \gaxif_ms_addr_gen.next_address_r_reg[2]\(2)
    );
\gaxif_ms_addr_gen.num_of_bytes_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000080AAAAAAAA"
    )
        port map (
      I0 => \gaxi_full_sm.present_state[1]_i_4_n_0\,
      I1 => s_axi_wvalid,
      I2 => \gaxi_bvalid_id_r.bvalid_d1_c_i_2_n_0\,
      I3 => \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_3_n_0\,
      I4 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I5 => present_state(0),
      O => \^addr_en_c\
    );
\gaxif_ms_addr_gen.num_of_bytes_r[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(7),
      I3 => Q(6),
      O => \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_3_n_0\
    );
\gaxif_wlast_gen.awlen_cntr_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => \^addr_en_c\,
      I2 => Q(0),
      O => \gaxif_wlast_gen.awlen_cntr_r_reg[7]\(0)
    );
\gaxif_wlast_gen.awlen_cntr_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => \^addr_en_c\,
      I2 => Q(0),
      I3 => Q(1),
      O => \gaxif_wlast_gen.awlen_cntr_r_reg[7]\(1)
    );
\gaxif_wlast_gen.awlen_cntr_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => \^addr_en_c\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      O => \gaxif_wlast_gen.awlen_cntr_r_reg[7]\(2)
    );
\gaxif_wlast_gen.awlen_cntr_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => \^addr_en_c\,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(3),
      O => \gaxif_wlast_gen.awlen_cntr_r_reg[7]\(3)
    );
\gaxif_wlast_gen.awlen_cntr_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => \^addr_en_c\,
      I2 => Q(4),
      I3 => \gaxi_bvalid_id_r.bvalid_d1_c_i_2_n_0\,
      O => \gaxif_wlast_gen.awlen_cntr_r_reg[7]\(4)
    );
\gaxif_wlast_gen.awlen_cntr_r[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BB8B88"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => \^addr_en_c\,
      I2 => Q(4),
      I3 => \gaxi_bvalid_id_r.bvalid_d1_c_i_2_n_0\,
      I4 => Q(5),
      O => \gaxif_wlast_gen.awlen_cntr_r_reg[7]\(5)
    );
\gaxif_wlast_gen.awlen_cntr_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B88BB8B8"
    )
        port map (
      I0 => s_axi_awlen(6),
      I1 => \^addr_en_c\,
      I2 => Q(6),
      I3 => Q(4),
      I4 => \gaxi_bvalid_id_r.bvalid_d1_c_i_2_n_0\,
      I5 => Q(5),
      O => \gaxif_wlast_gen.awlen_cntr_r_reg[7]\(6)
    );
\gaxif_wlast_gen.awlen_cntr_r[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0F6F0"
    )
        port map (
      I0 => present_state(0),
      I1 => present_state(1),
      I2 => \^addr_en_c\,
      I3 => s_axi_wvalid,
      I4 => \gaxi_full_sm.present_state[1]_i_2_n_0\,
      O => E(0)
    );
\gaxif_wlast_gen.awlen_cntr_r[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88BB8B8"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => \^addr_en_c\,
      I2 => Q(7),
      I3 => Q(6),
      I4 => \gaxif_wlast_gen.awlen_cntr_r_reg[5]\,
      O => \gaxif_wlast_gen.awlen_cntr_r_reg[7]\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_aclk : in STD_LOGIC;
    \gaxi_full_sm.present_state_reg[0]\ : in STD_LOGIC;
    s_axi_rd_en_c : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_89\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_90\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_91\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"000000000000000000000000000000000000000000000006FFFFFFFBFFFFFFFD",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => ADDRARDADDR(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 5) => ADDRBWRADDR(9 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_aclk,
      CLKBWRCLK => s_aclk,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => s_axi_wdata(31 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => s_axi_rdata(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_89\,
      DOPBDOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_90\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_91\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \gaxi_full_sm.present_state_reg[0]\,
      ENBWREN => s_axi_rd_en_c,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => AS(0),
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => s_axi_wstrb(3 downto 0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_wrapper is
  port (
    s_axi_arready : out STD_LOGIC;
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_rd_en_c : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_aclk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_aresetn : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_wrapper is
  signal \^as\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_0\ : STD_LOGIC;
  signal addr_cnt_enb_r : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal ar_id_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal arlen_cntr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_read_fsm_n_10 : STD_LOGIC;
  signal axi_read_fsm_n_14 : STD_LOGIC;
  signal axi_read_fsm_n_15 : STD_LOGIC;
  signal axi_read_fsm_n_16 : STD_LOGIC;
  signal axi_read_fsm_n_17 : STD_LOGIC;
  signal axi_read_fsm_n_18 : STD_LOGIC;
  signal axi_read_fsm_n_19 : STD_LOGIC;
  signal axi_read_fsm_n_20 : STD_LOGIC;
  signal axi_read_fsm_n_21 : STD_LOGIC;
  signal axi_read_fsm_n_22 : STD_LOGIC;
  signal axi_read_fsm_n_23 : STD_LOGIC;
  signal axi_read_fsm_n_24 : STD_LOGIC;
  signal axi_read_fsm_n_35 : STD_LOGIC;
  signal axi_read_fsm_n_36 : STD_LOGIC;
  signal axi_read_fsm_n_37 : STD_LOGIC;
  signal axi_read_fsm_n_38 : STD_LOGIC;
  signal axi_read_fsm_n_39 : STD_LOGIC;
  signal axi_read_fsm_n_40 : STD_LOGIC;
  signal axi_read_fsm_n_41 : STD_LOGIC;
  signal axi_read_fsm_n_42 : STD_LOGIC;
  signal axi_read_fsm_n_43 : STD_LOGIC;
  signal axi_read_fsm_n_44 : STD_LOGIC;
  signal axi_read_fsm_n_5 : STD_LOGIC;
  signal axi_read_fsm_n_7 : STD_LOGIC;
  signal axi_read_fsm_n_8 : STD_LOGIC;
  signal axi_read_fsm_n_9 : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[3]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[4]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[4]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[5]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[6]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_7_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[2]\ : STD_LOGIC;
  signal incr_en_r : STD_LOGIC;
  signal next_address_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal num_of_bytes_c : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in3_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 2 to 2 );
  signal p_2_out_0 : STD_LOGIC;
  signal \^s_axi_rd_en_c\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[4]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[4]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[5]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[7]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1\ : label is "soft_lutpair14";
begin
  AS(0) <= \^as\(0);
  s_axi_rd_en_c <= \^s_axi_rd_en_c\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => p_2_in(9),
      I1 => p_2_in(7),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I3 => p_2_in(6),
      I4 => p_2_in(8),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => p_2_in(8),
      I1 => p_2_in(6),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I3 => p_2_in(7),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => p_2_in(4),
      I1 => p_2_in(2),
      I2 => p_0_in3_in,
      I3 => incr_en_r,
      I4 => p_2_in(3),
      I5 => p_2_in(5),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => p_2_in(3),
      I1 => incr_en_r,
      I2 => p_0_in3_in,
      I3 => p_2_in(2),
      I4 => p_2_in(4),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_2_in(2),
      I1 => p_0_in3_in,
      I2 => incr_en_r,
      I3 => p_2_in(3),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => incr_en_r,
      I1 => p_0_in3_in,
      I2 => p_2_in(2),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_0\
    );
axi_read_fsm: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_fsm
     port map (
      ADDRBWRADDR(9 downto 0) => ADDRBWRADDR(9 downto 0),
      AR(0) => \^as\(0),
      D(3) => axi_read_fsm_n_7,
      D(2) => axi_read_fsm_n_8,
      D(1) => axi_read_fsm_n_9,
      D(0) => axi_read_fsm_n_10,
      E(0) => \^s_axi_rd_en_c\,
      Q(3 downto 0) => ar_id_r(3 downto 0),
      \gaxi_full_sm.arlen_cntr_reg[0]\(0) => axi_read_fsm_n_44,
      \gaxi_full_sm.arlen_cntr_reg[2]\ => \gaxi_full_sm.arlen_cntr[3]_i_2_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[3]\ => \gaxi_full_sm.arlen_cntr[4]_i_3_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[4]\ => \gaxi_full_sm.arlen_cntr[5]_i_2_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[6]\ => axi_read_fsm_n_43,
      \gaxi_full_sm.arlen_cntr_reg[6]_0\ => \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[7]\(7) => axi_read_fsm_n_35,
      \gaxi_full_sm.arlen_cntr_reg[7]\(6) => axi_read_fsm_n_36,
      \gaxi_full_sm.arlen_cntr_reg[7]\(5) => axi_read_fsm_n_37,
      \gaxi_full_sm.arlen_cntr_reg[7]\(4) => axi_read_fsm_n_38,
      \gaxi_full_sm.arlen_cntr_reg[7]\(3) => axi_read_fsm_n_39,
      \gaxi_full_sm.arlen_cntr_reg[7]\(2) => axi_read_fsm_n_40,
      \gaxi_full_sm.arlen_cntr_reg[7]\(1) => axi_read_fsm_n_41,
      \gaxi_full_sm.arlen_cntr_reg[7]\(0) => axi_read_fsm_n_42,
      \gaxi_full_sm.arlen_cntr_reg[7]_0\(7 downto 0) => arlen_cntr(7 downto 0),
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(6) => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[11]\,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(5) => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[6]\,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(4) => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[5]\,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(3) => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[4]\,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(2) => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[3]\,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(1) => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[2]\,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(0) => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[1]\,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1]\(0) => axi_read_fsm_n_5,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\(5 downto 0) => addr_cnt_enb_r(6 downto 1),
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10]\ => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_2_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(9) => axi_read_fsm_n_15,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(8) => axi_read_fsm_n_16,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(7) => axi_read_fsm_n_17,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(6) => axi_read_fsm_n_18,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(5) => axi_read_fsm_n_19,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(4) => axi_read_fsm_n_20,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(3) => axi_read_fsm_n_21,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(2) => axi_read_fsm_n_22,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(1) => axi_read_fsm_n_23,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(0) => axi_read_fsm_n_24,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]_0\(0) => p_2_out(2),
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[2]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7]\ => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_reg\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\(2 downto 0) => next_address_r(2 downto 0),
      \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0\(0) => p_0_in3_in,
      \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\ => axi_read_fsm_n_14,
      \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2]\(2) => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[2]\,
      \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2]\(1) => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[1]\,
      \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2]\(0) => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[0]\,
      incr_en_r => incr_en_r,
      p_2_in(11 downto 0) => p_2_in(11 downto 0),
      p_2_out_0 => p_2_out_0,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      \s_axi_arlen[0]_0\ => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_2_n_0\,
      \s_axi_arlen[0]_1\ => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_3_n_0\,
      \s_axi_arlen[0]_2\ => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_2_n_0\,
      \s_axi_arlen[2]_0\ => \gaxi_full_sm.arlen_cntr[7]_i_4_n_0\,
      \s_axi_arlen_0__s_port_\ => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2_n_0\,
      \s_axi_arlen_2__s_port_\ => \gaxi_full_sm.arlen_cntr[4]_i_2_n_0\,
      \s_axi_arlen_4__s_port_\ => \gaxi_full_sm.arlen_cntr[6]_i_2_n_0\,
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      \s_axi_arsize[0]_0\(0) => num_of_bytes_c(0),
      \s_axi_arsize_0__s_port_]\ => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2_n_0\,
      \s_axi_arsize_1__s_port_]\ => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_7_n_0\,
      \s_axi_arsize_2__s_port_\ => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_4_n_0\,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
\gaxi_full_sm.arlen_cntr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => arlen_cntr(2),
      I1 => arlen_cntr(1),
      I2 => arlen_cntr(0),
      O => \gaxi_full_sm.arlen_cntr[3]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(2),
      O => \gaxi_full_sm.arlen_cntr[4]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => arlen_cntr(3),
      I1 => arlen_cntr(0),
      I2 => arlen_cntr(1),
      I3 => arlen_cntr(2),
      O => \gaxi_full_sm.arlen_cntr[4]_i_3_n_0\
    );
\gaxi_full_sm.arlen_cntr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => arlen_cntr(4),
      I1 => arlen_cntr(2),
      I2 => arlen_cntr(1),
      I3 => arlen_cntr(0),
      I4 => arlen_cntr(3),
      O => \gaxi_full_sm.arlen_cntr[5]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => s_axi_arlen(2),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(0),
      I4 => s_axi_arlen(3),
      I5 => s_axi_arlen(4),
      O => \gaxi_full_sm.arlen_cntr[6]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_read_fsm_n_43,
      I1 => arlen_cntr(6),
      I2 => s_axi_rready,
      I3 => arlen_cntr(7),
      O => \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\
    );
\gaxi_full_sm.arlen_cntr[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(1),
      I4 => s_axi_arlen(2),
      O => \gaxi_full_sm.arlen_cntr[7]_i_4_n_0\
    );
\gaxi_full_sm.arlen_cntr_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_44,
      D => axi_read_fsm_n_42,
      PRE => \^as\(0),
      Q => arlen_cntr(0)
    );
\gaxi_full_sm.arlen_cntr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_44,
      CLR => \^as\(0),
      D => axi_read_fsm_n_41,
      Q => arlen_cntr(1)
    );
\gaxi_full_sm.arlen_cntr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_44,
      CLR => \^as\(0),
      D => axi_read_fsm_n_40,
      Q => arlen_cntr(2)
    );
\gaxi_full_sm.arlen_cntr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_44,
      CLR => \^as\(0),
      D => axi_read_fsm_n_39,
      Q => arlen_cntr(3)
    );
\gaxi_full_sm.arlen_cntr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_44,
      CLR => \^as\(0),
      D => axi_read_fsm_n_38,
      Q => arlen_cntr(4)
    );
\gaxi_full_sm.arlen_cntr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_44,
      CLR => \^as\(0),
      D => axi_read_fsm_n_37,
      Q => arlen_cntr(5)
    );
\gaxi_full_sm.arlen_cntr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_44,
      CLR => \^as\(0),
      D => axi_read_fsm_n_36,
      Q => arlen_cntr(6)
    );
\gaxi_full_sm.arlen_cntr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_44,
      CLR => \^as\(0),
      D => axi_read_fsm_n_35,
      Q => arlen_cntr(7)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFAFFEA"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0\,
      I1 => s_axi_arlen(1),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arlen(2),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_2_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303030B030303FF"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(2),
      I2 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0\,
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(2),
      I5 => s_axi_arsize(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_2_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_3_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_4_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0\,
      I2 => s_axi_arlen(2),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => s_axi_arlen(6),
      I2 => s_axi_arlen(7),
      I3 => s_axi_arlen(4),
      I4 => s_axi_arlen(3),
      I5 => s_axi_arlen(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_5,
      CLR => \^as\(0),
      D => p_2_out_0,
      Q => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[11]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_5,
      CLR => \^as\(0),
      D => addr_cnt_enb_r(1),
      Q => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[1]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_5,
      CLR => \^as\(0),
      D => addr_cnt_enb_r(2),
      Q => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[2]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_5,
      CLR => \^as\(0),
      D => addr_cnt_enb_r(3),
      Q => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[3]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_5,
      CLR => \^as\(0),
      D => addr_cnt_enb_r(4),
      Q => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[4]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_5,
      CLR => \^as\(0),
      D => addr_cnt_enb_r(5),
      Q => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[5]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_5,
      CLR => \^as\(0),
      D => addr_cnt_enb_r(6),
      Q => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg_n_0_[6]\
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => p_2_in(10),
      I1 => p_2_in(8),
      I2 => p_2_in(6),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I4 => p_2_in(7),
      I5 => p_2_in(9),
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_2_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_2_in(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I2 => p_2_in(6),
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out(2),
      CLR => \^as\(0),
      D => axi_read_fsm_n_16,
      Q => p_2_in(10)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out(2),
      CLR => \^as\(0),
      D => axi_read_fsm_n_15,
      Q => p_2_in(11)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out(2),
      CLR => \^as\(0),
      D => axi_read_fsm_n_24,
      Q => p_2_in(2)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out(2),
      CLR => \^as\(0),
      D => axi_read_fsm_n_23,
      Q => p_2_in(3)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out(2),
      CLR => \^as\(0),
      D => axi_read_fsm_n_22,
      Q => p_2_in(4)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out(2),
      CLR => \^as\(0),
      D => axi_read_fsm_n_21,
      Q => p_2_in(5)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out(2),
      CLR => \^as\(0),
      D => axi_read_fsm_n_20,
      Q => p_2_in(6)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out(2),
      CLR => \^as\(0),
      D => axi_read_fsm_n_19,
      Q => p_2_in(7)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out(2),
      CLR => \^as\(0),
      D => axi_read_fsm_n_18,
      Q => p_2_in(8)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out(2),
      CLR => \^as\(0),
      D => axi_read_fsm_n_17,
      Q => p_2_in(9)
    );
\gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.incr_en_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_14,
      CLR => \^as\(0),
      D => \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1_n_0\,
      Q => incr_en_r
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCFD"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0F5F7"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(0),
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_7_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out(2),
      CLR => \^as\(0),
      D => next_address_r(0),
      Q => p_2_in(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out(2),
      CLR => \^as\(0),
      D => next_address_r(1),
      Q => p_2_in(1)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out(2),
      CLR => \^as\(0),
      D => next_address_r(2),
      Q => p_0_in3_in
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      O => num_of_bytes_c(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => num_of_bytes_c(1)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      O => num_of_bytes_c(2)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_14,
      CLR => \^as\(0),
      D => num_of_bytes_c(0),
      Q => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[0]\
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_14,
      CLR => \^as\(0),
      D => num_of_bytes_c(1),
      Q => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[1]\
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_14,
      CLR => \^as\(0),
      D => num_of_bytes_c(2),
      Q => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[2]\
    );
\grid.S_AXI_RID_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \^s_axi_rd_en_c\,
      CLR => \^as\(0),
      D => axi_read_fsm_n_10,
      Q => s_axi_rid(0)
    );
\grid.S_AXI_RID_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \^s_axi_rd_en_c\,
      CLR => \^as\(0),
      D => axi_read_fsm_n_9,
      Q => s_axi_rid(1)
    );
\grid.S_AXI_RID_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \^s_axi_rd_en_c\,
      CLR => \^as\(0),
      D => axi_read_fsm_n_8,
      Q => s_axi_rid(2)
    );
\grid.S_AXI_RID_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \^s_axi_rd_en_c\,
      CLR => \^as\(0),
      D => axi_read_fsm_n_7,
      Q => s_axi_rid(3)
    );
\grid.ar_id_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_14,
      CLR => \^as\(0),
      D => s_axi_arid(0),
      Q => ar_id_r(0)
    );
\grid.ar_id_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_14,
      CLR => \^as\(0),
      D => s_axi_arid(1),
      Q => ar_id_r(1)
    );
\grid.ar_id_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_14,
      CLR => \^as\(0),
      D => s_axi_arid(2),
      Q => ar_id_r(2)
    );
\grid.ar_id_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_14,
      CLR => \^as\(0),
      D => s_axi_arid(3),
      Q => ar_id_r(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_wrapper is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_wrapper is
  signal \^addrardaddr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_22_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_23_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0\ : STD_LOGIC;
  signal addr_cnt_enb : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal addr_en_c : STD_LOGIC;
  signal axi_addr_full_c : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axi_bid_array[0]_0\ : STD_LOGIC;
  signal \axi_bid_array[1]_2\ : STD_LOGIC;
  signal \axi_bid_array[3]_1\ : STD_LOGIC;
  signal axi_wr_fsm_n_2 : STD_LOGIC;
  signal axi_wr_fsm_n_25 : STD_LOGIC;
  signal axi_wr_fsm_n_26 : STD_LOGIC;
  signal axi_wr_fsm_n_27 : STD_LOGIC;
  signal axi_wr_fsm_n_28 : STD_LOGIC;
  signal axi_wr_fsm_n_29 : STD_LOGIC;
  signal axi_wr_fsm_n_30 : STD_LOGIC;
  signal axi_wr_fsm_n_31 : STD_LOGIC;
  signal axi_wr_fsm_n_32 : STD_LOGIC;
  signal axi_wr_fsm_n_33 : STD_LOGIC;
  signal axi_wr_fsm_n_34 : STD_LOGIC;
  signal axi_wr_fsm_n_4 : STD_LOGIC;
  signal axi_wr_fsm_n_7 : STD_LOGIC;
  signal bmg_address_r : STD_LOGIC_VECTOR ( 11 downto 2 );
  signal bvalid_c : STD_LOGIC;
  signal \bvalid_count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_count_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \bvalid_count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \bvalid_count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal bvalid_d1_c : STD_LOGIC;
  signal bvalid_rd_cnt_c : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal bvalid_rd_cnt_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gaxi_bid_gen.S_AXI_BID[0]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_bid_gen.S_AXI_BID[1]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_bid_gen.S_AXI_BID[2]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_bid_gen.S_AXI_BID[3]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_bid_gen.bvalid_wr_cnt_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \gaxi_bid_gen.bvalid_wr_cnt_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \gaxi_bvalid_id_r.bvalid_r_i_1_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[2]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[3]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[4]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[3]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[4]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.bmg_address_r[8]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.incr_en_r_i_1_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal incr_en_r : STD_LOGIC;
  signal next_address_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal num_of_bytes_c : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 2 to 2 );
  signal p_4_out : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_22\ : label is "soft_lutpair25";
  attribute RAM_STYLE : string;
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[0][0]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[0][1]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[0][2]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[0][3]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[1][0]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[1][1]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[1][2]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[1][3]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[2][0]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[2][1]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[2][2]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[2][3]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[3][0]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[3][1]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[3][2]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[3][3]\ : label is "pipe_distributed";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.bvalid_rd_cnt_r[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.bvalid_rd_cnt_r[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.bmg_address_r[8]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.num_of_bytes_r[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.num_of_bytes_r[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_2\ : label is "soft_lutpair29";
begin
  ADDRARDADDR(9 downto 0) <= \^addrardaddr\(9 downto 0);
  s_axi_bvalid <= \^s_axi_bvalid\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => bmg_address_r(3),
      I1 => incr_en_r,
      I2 => p_0_in_0,
      I3 => bmg_address_r(2),
      I4 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[3]\,
      O => \^addrardaddr\(1)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => bmg_address_r(2),
      I1 => p_0_in_0,
      I2 => incr_en_r,
      I3 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2]\,
      O => \^addrardaddr\(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => bmg_address_r(11),
      I1 => bmg_address_r(9),
      I2 => bmg_address_r(10),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_22_n_0\,
      O => \^addrardaddr\(9)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => bmg_address_r(8),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_23_n_0\,
      I2 => bmg_address_r(6),
      I3 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\,
      I4 => bmg_address_r(7),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_22_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => bmg_address_r(4),
      I1 => bmg_address_r(2),
      I2 => p_0_in_0,
      I3 => incr_en_r,
      I4 => bmg_address_r(3),
      I5 => bmg_address_r(5),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_23_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => bmg_address_r(3),
      I1 => incr_en_r,
      I2 => p_0_in_0,
      I3 => bmg_address_r(2),
      I4 => bmg_address_r(4),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bmg_address_r(10),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_22_n_0\,
      I2 => bmg_address_r(9),
      O => \^addrardaddr\(8)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA6AAAAAAAAAA"
    )
        port map (
      I0 => bmg_address_r(9),
      I1 => bmg_address_r(7),
      I2 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\,
      I3 => bmg_address_r(6),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_23_n_0\,
      I5 => bmg_address_r(8),
      O => \^addrardaddr\(7)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9AAAAA"
    )
        port map (
      I0 => bmg_address_r(8),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_23_n_0\,
      I2 => bmg_address_r(6),
      I3 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\,
      I4 => bmg_address_r(7),
      O => \^addrardaddr\(6)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
        port map (
      I0 => bmg_address_r(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_23_n_0\,
      I2 => bmg_address_r(6),
      I3 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\,
      O => \^addrardaddr\(5)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => bmg_address_r(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_23_n_0\,
      I2 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6]\,
      O => \^addrardaddr\(4)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => bmg_address_r(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0\,
      I2 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5]\,
      O => \^addrardaddr\(3)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => bmg_address_r(4),
      I1 => bmg_address_r(2),
      I2 => p_0_in_0,
      I3 => incr_en_r,
      I4 => bmg_address_r(3),
      I5 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[4]\,
      O => \^addrardaddr\(2)
    );
axi_wr_fsm: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_fsm
     port map (
      ADDRARDADDR(1 downto 0) => \^addrardaddr\(2 downto 1),
      AS(0) => AS(0),
      D(5) => p_4_out,
      D(4 downto 0) => addr_cnt_enb(6 downto 2),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      E(0) => axi_wr_fsm_n_2,
      Q(7 downto 0) => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(7 downto 0),
      addr_en_c => addr_en_c,
      bvalid_c => bvalid_c,
      \bvalid_count_r_reg[0]\ => \bvalid_count_r_reg_n_0_[0]\,
      \bvalid_count_r_reg[1]\ => \bvalid_count_r_reg_n_0_[1]\,
      \bvalid_count_r_reg[2]\ => \bvalid_count_r_reg_n_0_[2]\,
      \gaxi_bid_gen.axi_bid_array_reg[0][0]\(0) => \axi_bid_array[0]_0\,
      \gaxi_bid_gen.axi_bid_array_reg[1][0]\(0) => \axi_bid_array[1]_2\,
      \gaxi_bid_gen.axi_bid_array_reg[2][3]\(0) => axi_wr_fsm_n_4,
      \gaxi_bid_gen.axi_bid_array_reg[3][0]\(0) => \axi_bid_array[3]_1\,
      \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\ => \gaxi_bid_gen.bvalid_wr_cnt_r_reg_n_0_[0]\,
      \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\ => \gaxi_bid_gen.bvalid_wr_cnt_r_reg_n_0_[1]\,
      \gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\(3) => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\,
      \gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\(2) => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6]\,
      \gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\(1) => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5]\,
      \gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\(0) => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2]\,
      \gaxif_ms_addr_gen.addr_cnt_enb_reg[2]\(0) => axi_wr_fsm_n_7,
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]\(0) => p_1_out(2),
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(9) => axi_wr_fsm_n_25,
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(8) => axi_wr_fsm_n_26,
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(7) => axi_wr_fsm_n_27,
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(6) => axi_wr_fsm_n_28,
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(5) => axi_wr_fsm_n_29,
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(4) => axi_wr_fsm_n_30,
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(3) => axi_wr_fsm_n_31,
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(2) => axi_wr_fsm_n_32,
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(1) => axi_wr_fsm_n_33,
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\(0) => axi_wr_fsm_n_34,
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(7 downto 1) => bmg_address_r(11 downto 5),
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]_1\(0) => bmg_address_r(2),
      \gaxif_ms_addr_gen.bmg_address_r_reg[3]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0\,
      \gaxif_ms_addr_gen.bmg_address_r_reg[4]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_23_n_0\,
      \gaxif_ms_addr_gen.bmg_address_r_reg[7]\ => \gaxif_ms_addr_gen.bmg_address_r[8]_i_2_n_0\,
      \gaxif_ms_addr_gen.bmg_address_r_reg[8]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_22_n_0\,
      \gaxif_ms_addr_gen.next_address_r_reg[2]\(2 downto 0) => next_address_r(2 downto 0),
      \gaxif_ms_addr_gen.next_address_r_reg[2]_0\(2) => p_0_in_0,
      \gaxif_ms_addr_gen.next_address_r_reg[2]_0\(1 downto 0) => axi_addr_full_c(1 downto 0),
      \gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\(2) => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[2]\,
      \gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\(1) => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1]\,
      \gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\(0) => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0]\,
      \gaxif_wlast_gen.awlen_cntr_r_reg[5]\ => \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\,
      \gaxif_wlast_gen.awlen_cntr_r_reg[7]\(7 downto 0) => p_0_in(7 downto 0),
      incr_en_r => incr_en_r,
      s_aclk => s_aclk,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      \s_axi_awlen[7]_0\ => \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_2_n_0\,
      \s_axi_awlen[7]_1\ => \gaxif_ms_addr_gen.addr_cnt_enb[4]_i_2_n_0\,
      \s_axi_awlen[7]_2\ => \gaxif_ms_addr_gen.addr_cnt_enb[3]_i_2_n_0\,
      \s_axi_awlen[7]_3\ => \gaxif_ms_addr_gen.addr_cnt_enb[2]_i_2_n_0\,
      \s_axi_awlen_7__s_port_]\ => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2_n_0\,
      s_axi_awready => s_axi_awready,
      \s_axi_awsize[2]\ => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3_n_0\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
\bvalid_count_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"959595956A6A6A2A"
    )
        port map (
      I0 => bvalid_c,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_bready,
      I3 => \bvalid_count_r_reg_n_0_[1]\,
      I4 => \bvalid_count_r_reg_n_0_[2]\,
      I5 => \bvalid_count_r_reg_n_0_[0]\,
      O => \bvalid_count_r[0]_i_1_n_0\
    );
\bvalid_count_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC3C3C3CC2CCCCCC"
    )
        port map (
      I0 => \bvalid_count_r_reg_n_0_[2]\,
      I1 => \bvalid_count_r_reg_n_0_[1]\,
      I2 => \bvalid_count_r_reg_n_0_[0]\,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      I5 => bvalid_c,
      O => \bvalid_count_r[1]_i_1_n_0\
    );
\bvalid_count_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6A6A6AA8AAAAAA"
    )
        port map (
      I0 => \bvalid_count_r_reg_n_0_[2]\,
      I1 => \bvalid_count_r_reg_n_0_[1]\,
      I2 => \bvalid_count_r_reg_n_0_[0]\,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      I5 => bvalid_c,
      O => \bvalid_count_r[2]_i_1_n_0\
    );
\bvalid_count_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AS(0),
      D => \bvalid_count_r[0]_i_1_n_0\,
      Q => \bvalid_count_r_reg_n_0_[0]\
    );
\bvalid_count_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AS(0),
      D => \bvalid_count_r[1]_i_1_n_0\,
      Q => \bvalid_count_r_reg_n_0_[1]\
    );
\bvalid_count_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AS(0),
      D => \bvalid_count_r[2]_i_1_n_0\,
      Q => \bvalid_count_r_reg_n_0_[2]\
    );
\gaxi_bid_gen.S_AXI_BID[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[3][0]\,
      I1 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[1][0]\,
      I2 => bvalid_rd_cnt_c(0),
      I3 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[2][0]\,
      I4 => bvalid_rd_cnt_c(1),
      I5 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[0][0]\,
      O => \gaxi_bid_gen.S_AXI_BID[0]_i_1_n_0\
    );
\gaxi_bid_gen.S_AXI_BID[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[3][1]\,
      I1 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[1][1]\,
      I2 => bvalid_rd_cnt_c(0),
      I3 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[2][1]\,
      I4 => bvalid_rd_cnt_c(1),
      I5 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[0][1]\,
      O => \gaxi_bid_gen.S_AXI_BID[1]_i_1_n_0\
    );
\gaxi_bid_gen.S_AXI_BID[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[3][2]\,
      I1 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[1][2]\,
      I2 => bvalid_rd_cnt_c(0),
      I3 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[2][2]\,
      I4 => bvalid_rd_cnt_c(1),
      I5 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[0][2]\,
      O => \gaxi_bid_gen.S_AXI_BID[2]_i_1_n_0\
    );
\gaxi_bid_gen.S_AXI_BID[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[3][3]\,
      I1 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[1][3]\,
      I2 => bvalid_rd_cnt_c(0),
      I3 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[2][3]\,
      I4 => bvalid_rd_cnt_c(1),
      I5 => \gaxi_bid_gen.axi_bid_array_reg_n_0_[0][3]\,
      O => \gaxi_bid_gen.S_AXI_BID[3]_i_1_n_0\
    );
\gaxi_bid_gen.S_AXI_BID_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => s_aresetn,
      D => \gaxi_bid_gen.S_AXI_BID[0]_i_1_n_0\,
      Q => s_axi_bid(0),
      R => '0'
    );
\gaxi_bid_gen.S_AXI_BID_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => s_aresetn,
      D => \gaxi_bid_gen.S_AXI_BID[1]_i_1_n_0\,
      Q => s_axi_bid(1),
      R => '0'
    );
\gaxi_bid_gen.S_AXI_BID_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => s_aresetn,
      D => \gaxi_bid_gen.S_AXI_BID[2]_i_1_n_0\,
      Q => s_axi_bid(2),
      R => '0'
    );
\gaxi_bid_gen.S_AXI_BID_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => s_aresetn,
      D => \gaxi_bid_gen.S_AXI_BID[3]_i_1_n_0\,
      Q => s_axi_bid(3),
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \axi_bid_array[0]_0\,
      D => s_axi_awid(0),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[0][0]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \axi_bid_array[0]_0\,
      D => s_axi_awid(1),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[0][1]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \axi_bid_array[0]_0\,
      D => s_axi_awid(2),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[0][2]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \axi_bid_array[0]_0\,
      D => s_axi_awid(3),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[0][3]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \axi_bid_array[1]_2\,
      D => s_axi_awid(0),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[1][0]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \axi_bid_array[1]_2\,
      D => s_axi_awid(1),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[1][1]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \axi_bid_array[1]_2\,
      D => s_axi_awid(2),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[1][2]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \axi_bid_array[1]_2\,
      D => s_axi_awid(3),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[1][3]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_4,
      D => s_axi_awid(0),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[2][0]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_4,
      D => s_axi_awid(1),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[2][1]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_4,
      D => s_axi_awid(2),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[2][2]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_4,
      D => s_axi_awid(3),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[2][3]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \axi_bid_array[3]_1\,
      D => s_axi_awid(0),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[3][0]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \axi_bid_array[3]_1\,
      D => s_axi_awid(1),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[3][1]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \axi_bid_array[3]_1\,
      D => s_axi_awid(2),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[3][2]\,
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \axi_bid_array[3]_1\,
      D => s_axi_awid(3),
      Q => \gaxi_bid_gen.axi_bid_array_reg_n_0_[3][3]\,
      R => '0'
    );
\gaxi_bid_gen.bvalid_rd_cnt_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bvalid_rd_cnt_r(0),
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_bready,
      O => bvalid_rd_cnt_c(0)
    );
\gaxi_bid_gen.bvalid_rd_cnt_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => bvalid_rd_cnt_r(1),
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid\,
      I3 => bvalid_rd_cnt_r(0),
      O => bvalid_rd_cnt_c(1)
    );
\gaxi_bid_gen.bvalid_rd_cnt_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AS(0),
      D => bvalid_rd_cnt_c(0),
      Q => bvalid_rd_cnt_r(0)
    );
\gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AS(0),
      D => bvalid_rd_cnt_c(1),
      Q => bvalid_rd_cnt_r(1)
    );
\gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bvalid_c,
      I1 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg_n_0_[0]\,
      O => \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1_n_0\
    );
\gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg_n_0_[0]\,
      I1 => bvalid_c,
      I2 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg_n_0_[1]\,
      O => \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1_n_0\
    );
\gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AS(0),
      D => \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1_n_0\,
      Q => \gaxi_bid_gen.bvalid_wr_cnt_r_reg_n_0_[0]\
    );
\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AS(0),
      D => \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1_n_0\,
      Q => \gaxi_bid_gen.bvalid_wr_cnt_r_reg_n_0_[1]\
    );
\gaxi_bvalid_id_r.bvalid_d1_c_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AS(0),
      D => bvalid_c,
      Q => bvalid_d1_c
    );
\gaxi_bvalid_id_r.bvalid_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFAAAA"
    )
        port map (
      I0 => bvalid_d1_c,
      I1 => \bvalid_count_r_reg_n_0_[2]\,
      I2 => \bvalid_count_r_reg_n_0_[1]\,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      O => \gaxi_bvalid_id_r.bvalid_r_i_1_n_0\
    );
\gaxi_bvalid_id_r.bvalid_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AS(0),
      D => \gaxi_bvalid_id_r.bvalid_r_i_1_n_0\,
      Q => \^s_axi_bvalid\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0\,
      I1 => s_axi_awlen(2),
      I2 => s_axi_awlen(1),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize(2),
      I5 => s_axi_awsize(1),
      O => \gaxif_ms_addr_gen.addr_cnt_enb[2]_i_2_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFCEC"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(1),
      I4 => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0\,
      I5 => s_axi_awlen(2),
      O => \gaxif_ms_addr_gen.addr_cnt_enb[3]_i_2_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFCFECCAAA8"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awlen(1),
      I5 => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0\,
      O => \gaxif_ms_addr_gen.addr_cnt_enb[4]_i_2_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCF8FCFCFC0000"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awlen(2),
      I2 => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0\,
      I3 => s_axi_awlen(1),
      I4 => s_axi_awsize(2),
      I5 => s_axi_awsize(1),
      O => \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_2_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0\,
      I2 => s_axi_awlen(1),
      O => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      O => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awlen(3),
      I2 => s_axi_awlen(5),
      I3 => s_axi_awlen(0),
      I4 => s_axi_awlen(6),
      I5 => s_axi_awlen(7),
      O => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_7,
      CLR => AS(0),
      D => p_4_out,
      Q => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_7,
      CLR => AS(0),
      D => addr_cnt_enb(2),
      Q => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2]\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_7,
      CLR => AS(0),
      D => addr_cnt_enb(3),
      Q => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[3]\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_7,
      CLR => AS(0),
      D => addr_cnt_enb(4),
      Q => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[4]\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_7,
      CLR => AS(0),
      D => addr_cnt_enb(5),
      Q => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5]\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_7,
      CLR => AS(0),
      D => addr_cnt_enb(6),
      Q => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6]\
    );
\gaxif_ms_addr_gen.bmg_address_r[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => bmg_address_r(7),
      I1 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\,
      I2 => bmg_address_r(6),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_23_n_0\,
      O => \gaxif_ms_addr_gen.bmg_address_r[8]_i_2_n_0\
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_1_out(2),
      CLR => AS(0),
      D => axi_wr_fsm_n_26,
      Q => bmg_address_r(10)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_1_out(2),
      CLR => AS(0),
      D => axi_wr_fsm_n_25,
      Q => bmg_address_r(11)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_1_out(2),
      CLR => AS(0),
      D => axi_wr_fsm_n_34,
      Q => bmg_address_r(2)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_1_out(2),
      CLR => AS(0),
      D => axi_wr_fsm_n_33,
      Q => bmg_address_r(3)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_1_out(2),
      CLR => AS(0),
      D => axi_wr_fsm_n_32,
      Q => bmg_address_r(4)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_1_out(2),
      CLR => AS(0),
      D => axi_wr_fsm_n_31,
      Q => bmg_address_r(5)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_1_out(2),
      CLR => AS(0),
      D => axi_wr_fsm_n_30,
      Q => bmg_address_r(6)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_1_out(2),
      CLR => AS(0),
      D => axi_wr_fsm_n_29,
      Q => bmg_address_r(7)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_1_out(2),
      CLR => AS(0),
      D => axi_wr_fsm_n_28,
      Q => bmg_address_r(8)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_1_out(2),
      CLR => AS(0),
      D => axi_wr_fsm_n_27,
      Q => bmg_address_r(9)
    );
\gaxif_ms_addr_gen.incr_en_r_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      O => \gaxif_ms_addr_gen.incr_en_r_i_1_n_0\
    );
\gaxif_ms_addr_gen.incr_en_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => addr_en_c,
      CLR => AS(0),
      D => \gaxif_ms_addr_gen.incr_en_r_i_1_n_0\,
      Q => incr_en_r
    );
\gaxif_ms_addr_gen.next_address_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_1_out(2),
      CLR => AS(0),
      D => next_address_r(0),
      Q => axi_addr_full_c(0)
    );
\gaxif_ms_addr_gen.next_address_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_1_out(2),
      CLR => AS(0),
      D => next_address_r(1),
      Q => axi_addr_full_c(1)
    );
\gaxif_ms_addr_gen.next_address_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_1_out(2),
      CLR => AS(0),
      D => next_address_r(2),
      Q => p_0_in_0
    );
\gaxif_ms_addr_gen.num_of_bytes_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      O => num_of_bytes_c(0)
    );
\gaxif_ms_addr_gen.num_of_bytes_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => num_of_bytes_c(1)
    );
\gaxif_ms_addr_gen.num_of_bytes_r[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      O => num_of_bytes_c(2)
    );
\gaxif_ms_addr_gen.num_of_bytes_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => addr_en_c,
      CLR => AS(0),
      D => num_of_bytes_c(0),
      Q => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0]\
    );
\gaxif_ms_addr_gen.num_of_bytes_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => addr_en_c,
      CLR => AS(0),
      D => num_of_bytes_c(1),
      Q => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1]\
    );
\gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => addr_en_c,
      CLR => AS(0),
      D => num_of_bytes_c(2),
      Q => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[2]\
    );
\gaxif_wlast_gen.awlen_cntr_r[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(5),
      I1 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(3),
      I2 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(0),
      I3 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(1),
      I4 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(2),
      I5 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(4),
      O => \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_2,
      D => p_0_in(0),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_2,
      D => p_0_in(1),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(1)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_2,
      D => p_0_in(2),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(2)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_2,
      D => p_0_in(3),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(3)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_2,
      D => p_0_in(4),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(4)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_2,
      D => p_0_in(5),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(5)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_2,
      D => p_0_in(6),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(6)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_2,
      D => p_0_in(7),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_aclk : in STD_LOGIC;
    \gaxi_full_sm.present_state_reg[0]\ : in STD_LOGIC;
    s_axi_rd_en_c : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
     port map (
      ADDRARDADDR(9 downto 0) => ADDRARDADDR(9 downto 0),
      ADDRBWRADDR(9 downto 0) => ADDRBWRADDR(9 downto 0),
      AS(0) => AS(0),
      \gaxi_full_sm.present_state_reg[0]\ => \gaxi_full_sm.present_state_reg[0]\,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_aclk : in STD_LOGIC;
    \gaxi_full_sm.present_state_reg[0]\ : in STD_LOGIC;
    s_axi_rd_en_c : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
     port map (
      ADDRARDADDR(9 downto 0) => ADDRARDADDR(9 downto 0),
      ADDRBWRADDR(9 downto 0) => ADDRBWRADDR(9 downto 0),
      AS(0) => AS(0),
      \gaxi_full_sm.present_state_reg[0]\ => \gaxi_full_sm.present_state_reg[0]\,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_aclk : in STD_LOGIC;
    \gaxi_full_sm.present_state_reg[0]\ : in STD_LOGIC;
    s_axi_rd_en_c : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
begin
\valid.cstr\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
     port map (
      ADDRARDADDR(9 downto 0) => ADDRARDADDR(9 downto 0),
      ADDRBWRADDR(9 downto 0) => ADDRBWRADDR(9 downto 0),
      AS(0) => AS(0),
      \gaxi_full_sm.present_state_reg[0]\ => \gaxi_full_sm.present_state_reg[0]\,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5_synth is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aresetn : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5_synth is
  signal \gnbram.gaxibmg.axi_wr_fsm_n_3\ : STD_LOGIC;
  signal s_aresetn_a_c : STD_LOGIC;
  signal s_axi_araddr_out_c : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal s_axi_awaddr_out_c : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal s_axi_rd_en_c : STD_LOGIC;
begin
\gnbram.gaxibmg.axi_blk_mem_gen\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
     port map (
      ADDRARDADDR(9 downto 0) => s_axi_awaddr_out_c(9 downto 0),
      ADDRBWRADDR(9 downto 0) => s_axi_araddr_out_c(9 downto 0),
      AS(0) => s_aresetn_a_c,
      \gaxi_full_sm.present_state_reg[0]\ => \gnbram.gaxibmg.axi_wr_fsm_n_3\,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
\gnbram.gaxibmg.axi_rd_sm\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_wrapper
     port map (
      ADDRBWRADDR(9 downto 0) => s_axi_araddr_out_c(9 downto 0),
      AS(0) => s_aresetn_a_c,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
\gnbram.gaxibmg.axi_wr_fsm\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_wrapper
     port map (
      ADDRARDADDR(9 downto 0) => s_axi_awaddr_out_c(9 downto 0),
      AS(0) => s_aresetn_a_c,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ => \gnbram.gaxibmg.axi_wr_fsm_n_3\,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => S_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 10;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 10;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 8;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "Estimated Power for IP     :     5.96515 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "kintex7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "start_memblock.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "start_memblock.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1024;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1024;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 4;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 4;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1024;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 1024;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "READ_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "kintex7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  doutb(31) <= \<const0>\;
  doutb(30) <= \<const0>\;
  doutb(29) <= \<const0>\;
  doutb(28) <= \<const0>\;
  doutb(27) <= \<const0>\;
  doutb(26) <= \<const0>\;
  doutb(25) <= \<const0>\;
  doutb(24) <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5_synth
     port map (
      S_AXI_AWREADY => s_axi_awready,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "start_memblock,blk_mem_gen_v8_3_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "blk_mem_gen_v8_3_5,Vivado 2016.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 10;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 10;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 8;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     5.96515 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "kintex7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 1;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 1;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "start_memblock.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "start_memblock.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 1;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 1024;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 1024;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 1;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 1;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 4;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 4;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 1024;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 1024;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "READ_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "kintex7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5
     port map (
      addra(9 downto 0) => B"0000000000",
      addrb(9 downto 0) => B"0000000000",
      clka => '0',
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(31 downto 0) => B"00000000000000000000000000000000",
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => NLW_U0_douta_UNCONNECTED(31 downto 0),
      doutb(31 downto 0) => NLW_U0_doutb_UNCONNECTED(31 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(9 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(9 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(9 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(9 downto 0),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(3 downto 0) => B"0000",
      web(3 downto 0) => B"0000"
    );
end STRUCTURE;