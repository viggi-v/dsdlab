@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 643f8ae31387462882333db2ac865e94 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot bcd_tb_behav xil_defaultlib.bcd_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
