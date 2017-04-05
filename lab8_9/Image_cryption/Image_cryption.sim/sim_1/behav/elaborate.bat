@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 6c8202979e1345ab9d747b268002db07 -m64 --debug typical --relax --mt 2 -L blk_mem_gen_v8_2 -L xil_defaultlib -L secureip --snapshot main_behav xil_defaultlib.main -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
