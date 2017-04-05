@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 903675172f594befa3d5d8f7f1ba86a5 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot centurycounter_behav xil_defaultlib.centurycounter -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
