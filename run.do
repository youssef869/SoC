vlib work
vlog *.*v
vsim -voptargs=+acc work.SoC_tb
do wave.do
run -all