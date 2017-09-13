@echo off
set xv_path=D:\\Vivado\\2017.2\\bin
call %xv_path%/xsim Decoder_Test_behav -key {Behavioral:sim_1:Functional:Decoder_Test} -tclbatch Decoder_Test.tcl -view D:/TabledAsymetricNumeralSystems/KompresjaDanych/KompresjaDanych/Encoder_Test_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
