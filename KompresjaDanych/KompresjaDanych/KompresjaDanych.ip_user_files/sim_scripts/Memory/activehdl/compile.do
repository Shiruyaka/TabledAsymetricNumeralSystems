vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_11

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_11 activehdl/proc_sys_reset_v5_0_11

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../KompresjaDanych.srcs/sources_1/bd/Memory/ipshared/7e3a/hdl" "+incdir+../../../../KompresjaDanych.srcs/sources_1/bd/Memory/ipshared/2ad9/hdl" "+incdir+../../../../KompresjaDanych.srcs/sources_1/bd/Memory/ipshared/39ca/hdl/verilog" "+incdir+../../../../KompresjaDanych.srcs/sources_1/bd/Memory/ipshared/6eb1/hdl" "+incdir+../../../../KompresjaDanych.srcs/sources_1/bd/Memory/ipshared/1d61/hdl" "+incdir+../../../../KompresjaDanych.srcs/sources_1/bd/Memory/ipshared/7e3a/hdl" "+incdir+../../../../KompresjaDanych.srcs/sources_1/bd/Memory/ipshared/2ad9/hdl" "+incdir+../../../../KompresjaDanych.srcs/sources_1/bd/Memory/ipshared/39ca/hdl/verilog" "+incdir+../../../../KompresjaDanych.srcs/sources_1/bd/Memory/ipshared/6eb1/hdl" "+incdir+../../../../KompresjaDanych.srcs/sources_1/bd/Memory/ipshared/1d61/hdl" \
"D:/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"d:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/KompresjaDanych.srcs/sources_1/bd/Memory/ip/Memory_axi_bram_ctrl_0_0/Memory_axi_bram_ctrl_0_0_sim_netlist.vhdl" \
"d:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/KompresjaDanych.srcs/sources_1/bd/Memory/ip/Memory_axi_bram_ctrl_1_0/Memory_axi_bram_ctrl_1_0_sim_netlist.vhdl" \
"d:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/KompresjaDanych.srcs/sources_1/bd/Memory/ip/Memory_axi_bram_ctrl_2_0/Memory_axi_bram_ctrl_2_0_sim_netlist.vhdl" \
"d:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/KompresjaDanych.srcs/sources_1/bd/Memory/ip/Memory_axi_bram_ctrl_3_0/Memory_axi_bram_ctrl_3_0_sim_netlist.vhdl" \
"d:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/KompresjaDanych.srcs/sources_1/bd/Memory/ip/Memory_axi_bram_ctrl_4_0/Memory_axi_bram_ctrl_4_0_sim_netlist.vhdl" \
"d:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/KompresjaDanych.srcs/sources_1/bd/Memory/ip/Memory_data_in_mem_0/Memory_data_in_mem_0_sim_netlist.vhdl" \
"d:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/KompresjaDanych.srcs/sources_1/bd/Memory/ip/Memory_data_out_mem_0/Memory_data_out_mem_0_sim_netlist.vhdl" \
"d:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/KompresjaDanych.srcs/sources_1/bd/Memory/ip/Memory_encoding_table_mem_0/Memory_encoding_table_mem_0_sim_netlist.vhdl" \
"d:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/KompresjaDanych.srcs/sources_1/bd/Memory/ip/Memory_nb_mem_0/Memory_nb_mem_0_sim_netlist.vhdl" \
"d:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/KompresjaDanych.srcs/sources_1/bd/Memory/ip/Memory_processing_system7_0_0/Memory_processing_system7_0_0_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../KompresjaDanych.srcs/sources_1/bd/Memory/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_11 -93 \
"../../../../KompresjaDanych.srcs/sources_1/bd/Memory/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Memory/ip/Memory_rst_ps7_0_50M_0/sim/Memory_rst_ps7_0_50M_0.vhd" \
"d:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/KompresjaDanych.srcs/sources_1/bd/Memory/ip/Memory_start_mem_0/Memory_start_mem_0_sim_netlist.vhdl" \
"d:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/KompresjaDanych.srcs/sources_1/bd/Memory/ip/Memory_xbar_0/Memory_xbar_0_sim_netlist.vhdl" \
"d:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/KompresjaDanych.srcs/sources_1/bd/Memory/ip/Memory_auto_pc_0/Memory_auto_pc_0_sim_netlist.vhdl" \
"../../../bd/Memory/hdl/Memory.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

