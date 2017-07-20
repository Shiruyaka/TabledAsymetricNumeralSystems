@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 70540a3212d3476bbdb162517936ac24 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Encoder_Test_behav xil_defaultlib.Encoder_Test -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
