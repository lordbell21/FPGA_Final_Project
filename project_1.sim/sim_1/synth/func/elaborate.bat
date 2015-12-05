@echo off
set xv_path=G:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 569c127b04754b59b8b0f530118f8ec9 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot sort_test_func_synth xil_defaultlib.sort_test -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
