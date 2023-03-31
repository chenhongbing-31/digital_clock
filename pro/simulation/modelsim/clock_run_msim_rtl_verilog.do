transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {d:/fpgatools/quartus ii 18.0/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {d:/fpgatools/quartus ii 18.0/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {d:/fpgatools/quartus ii 18.0/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {d:/fpgatools/quartus ii 18.0/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {d:/fpgatools/quartus ii 18.0/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cycloneive_ver
vmap cycloneive_ver ./verilog_libs/cycloneive_ver
vlog -vlog01compat -work cycloneive_ver {d:/fpgatools/quartus ii 18.0/quartus/eda/sim_lib/cycloneive_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/pro/ip/rom6x256 {C:/Users/chb/Desktop/digital_clock/pro/ip/rom6x256/rom6x256.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/clock {C:/Users/chb/Desktop/digital_clock/rtl/clock/equal.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/clock {C:/Users/chb/Desktop/digital_clock/rtl/clock/datan.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/clock {C:/Users/chb/Desktop/digital_clock/rtl/clock/alarm.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/led_itf {C:/Users/chb/Desktop/digital_clock/rtl/led_itf/tw.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/led_itf {C:/Users/chb/Desktop/digital_clock/rtl/led_itf/led_itf.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/pb_itf {C:/Users/chb/Desktop/digital_clock/rtl/pb_itf/smooth.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/pb_itf {C:/Users/chb/Desktop/digital_clock/rtl/pb_itf/pb_itf.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl {C:/Users/chb/Desktop/digital_clock/rtl/para.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/player_itf {C:/Users/chb/Desktop/digital_clock/rtl/player_itf/translater.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/player_itf {C:/Users/chb/Desktop/digital_clock/rtl/player_itf/player_itf.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/player_itf {C:/Users/chb/Desktop/digital_clock/rtl/player_itf/dp_cnt_addr.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/player_itf {C:/Users/chb/Desktop/digital_clock/rtl/player_itf/ctrl_cnt_addr.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/player_itf {C:/Users/chb/Desktop/digital_clock/rtl/player_itf/cnt_addr.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/clock {C:/Users/chb/Desktop/digital_clock/rtl/clock/datapath_clock.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/clock {C:/Users/chb/Desktop/digital_clock/rtl/clock/ctrl_clock.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/clock {C:/Users/chb/Desktop/digital_clock/rtl/clock/clock.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/pb_itf {C:/Users/chb/Desktop/digital_clock/rtl/pb_itf/sp_lp.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/sd_itf {C:/Users/chb/Desktop/digital_clock/rtl/sd_itf/sd_itf.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/sd_itf {C:/Users/chb/Desktop/digital_clock/rtl/sd_itf/decoder4_7.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/sd_itf {C:/Users/chb/Desktop/digital_clock/rtl/sd_itf/datapath_sd_itf.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl/sd_itf {C:/Users/chb/Desktop/digital_clock/rtl/sd_itf/ctrl_sd_itf.v}
vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/rtl {C:/Users/chb/Desktop/digital_clock/rtl/top.v}

vlog -vlog01compat -work work +incdir+C:/Users/chb/Desktop/digital_clock/pro/../sim {C:/Users/chb/Desktop/digital_clock/pro/../sim/tb_sd_itf.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_sd_itf

add wave *
view structure
view signals
run -all
