@echo off
set xv_path=G:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto ea6486985ac145daa63c6088bc4bd33e -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot sort_test_behav xil_defaultlib.sort_test -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
