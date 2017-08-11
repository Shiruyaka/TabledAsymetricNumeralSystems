@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 70540a3212d3476bbdb162517936ac24 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_10 -L secureip -L xpm --snapshot encoder_tb_behav xil_defaultlib.encoder_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
