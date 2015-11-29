@echo off
set xv_path=G:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xsim sort_test_behav -key {Behavioral:sim_1:Functional:sort_test} -tclbatch sort_test.tcl -view G:/Users/Steven/FPGADesignProjects/final_project/project_1/sort_test_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
