@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 7178bceab27944ba938d395cf9163f5d -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot seqdet_behav xil_defaultlib.seqdet -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
