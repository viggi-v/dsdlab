@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 5d1d3856cca64166b5cee3fbf281d0e3 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot int2vectest_behav xil_defaultlib.int2vectest -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
