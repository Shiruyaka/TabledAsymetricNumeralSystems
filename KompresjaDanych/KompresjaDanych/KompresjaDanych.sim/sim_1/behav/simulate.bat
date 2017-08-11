@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xsim encoder_tb_behav -key {Behavioral:sim_1:Functional:encoder_tb} -tclbatch encoder_tb.tcl -view D:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/Encoder_Test_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
