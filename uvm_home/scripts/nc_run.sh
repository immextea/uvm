#!/bin/csh/ -f
echo "Hello Word!"
cd /home/eda/uvm_home/work/
rm  -rf *
irun \
	-64bit \
	-sv \
	-access  +R \
	-loadpli1 debpli:novas_pli_boot \
	-clean \
	-races \
	-randwarn \
    -run \
	-disable_sem2009 \
	-uvm \
	-incdir /home/.tools/cadence/INCISIVE151/tools.lnx86/methodology/UVM/CDNS-1.1d/sv/src \
	-incdir /home/eda/uvm_home/src \
	-f /home/eda/uvm_home/DUT/dut_file.f \
       /home/eda/uvm_home/src/file_list.sv \
	-LOGFILE irun.log \
       +UVM_TESTNAME=$1 
	 cd /home/eda/uvm_home/work/
	   #gvim  irun.log
    	cd /home/eda/uvm_home/scripts/


