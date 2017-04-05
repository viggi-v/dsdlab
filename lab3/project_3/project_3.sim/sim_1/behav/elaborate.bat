@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto a45e0f249ac84d0cb09794eb73aee6b9 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot bcd_adder_behav xil_defaultlib.bcd_adder -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
