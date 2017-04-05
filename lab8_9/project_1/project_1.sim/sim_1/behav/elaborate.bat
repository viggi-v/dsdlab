@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 318a198190b34f0e875016e7850bc7f0 -m64 --debug typical --relax --mt 2 -L xbip_utils_v3_0 -L c_reg_fd_v12_0 -L xbip_dsp48_wrapper_v3_0 -L xbip_pipe_v3_0 -L xbip_dsp48_addsub_v3_0 -L xbip_addsub_v3_0 -L c_addsub_v12_0 -L c_gate_bit_v12_0 -L xbip_counter_v3_0 -L c_counter_binary_v12_0 -L xil_defaultlib -L secureip --snapshot twodigit_counter_7segment_behav xil_defaultlib.twodigit_counter_7segment -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0