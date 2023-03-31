onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} /tb_clock/inst_clock/inst_ctrl_clock/sysclk
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} /tb_clock/inst_clock/inst_ctrl_clock/rst_n
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} /tb_clock/inst_clock/inst_ctrl_clock/long_pression1
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} /tb_clock/inst_clock/inst_ctrl_clock/short_pression1
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} /tb_clock/inst_clock/inst_ctrl_clock/long_pression0
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} /tb_clock/inst_clock/inst_ctrl_clock/short_pression0
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color Yellow -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/state
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color {Green Yellow} -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/cnt_seconds
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/twinkle
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/valid_sd
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/twinkle_fre
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/twinkle_led
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color {Spring Green} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/valid_led
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} /tb_clock/inst_clock/inst_ctrl_clock/tm_sac
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color Turquoise -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/alarm_keep
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color Turquoise -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/alarm_add
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color Turquoise -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/alarm_sub
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color Turquoise -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/alarm_clear
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color Turquoise -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/alarm_reset
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color Turquoise -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/keep
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color Turquoise -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/add
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color Turquoise -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/sub
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color Turquoise -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/clear
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color Turquoise -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/reset
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color {Medium Violet Red} -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/num6
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color {Medium Violet Red} -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/num5
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color {Medium Violet Red} -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/num4
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color {Medium Violet Red} -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/num3
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color {Medium Violet Red} -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/num2
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color {Medium Violet Red} -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/num1
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color {Medium Violet Red} -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/alarm_num6
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color {Medium Violet Red} -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/alarm_num5
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color {Medium Violet Red} -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/alarm_num4
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_ctrl_clock/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_ctrl_clock} -color {Medium Violet Red} -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_ctrl_clock/alarm_num3
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} /tb_clock/inst_clock/inst_datapath_clcok/sysclk
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} /tb_clock/inst_clock/inst_datapath_clcok/rst_n
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color {Medium Aquamarine} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/alarm_keep
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color {Medium Aquamarine} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/alarm_add
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color {Medium Aquamarine} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/alarm_sub
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color {Medium Aquamarine} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/alarm_reset
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color {Medium Aquamarine} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/alarm_clear
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color {Medium Aquamarine} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/keep
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color {Medium Aquamarine} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/add
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color {Medium Aquamarine} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/sub
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color {Medium Aquamarine} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/reset
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color {Medium Aquamarine} -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/clear
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Plum -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/num6
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Plum -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/num5
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Plum -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/num4
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Plum -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/num3
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Plum -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/num2
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Plum -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/num1
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Plum -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/alarm_num6
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Plum -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/alarm_num5
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Plum -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/alarm_num4
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Plum -radix unsigned -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/alarm_num3
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color {Spring Green} /tb_clock/inst_clock/inst_datapath_clcok/tm_sac
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Gold -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/reg_num6
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Gold -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/reg_num5
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Gold -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/reg_num4
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Gold -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/reg_num3
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Gold -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/reg_num2
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} -color Gold -radix binary -radixshowbase 0 /tb_clock/inst_clock/inst_datapath_clcok/reg_num1
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} /tb_clock/inst_clock/inst_datapath_clcok/l0
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} /tb_clock/inst_clock/inst_datapath_clcok/eq6
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} /tb_clock/inst_clock/inst_datapath_clcok/eq5
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} /tb_clock/inst_clock/inst_datapath_clcok/eq4
add wave -noupdate -expand -label sim:/tb_clock/inst_clock/inst_datapath_clcok/Group1 -group {Region: sim:/tb_clock/inst_clock/inst_datapath_clcok} /tb_clock/inst_clock/inst_datapath_clcok/eq3
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {266 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 245
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {58920565975 ps} {99246572705 ps}
