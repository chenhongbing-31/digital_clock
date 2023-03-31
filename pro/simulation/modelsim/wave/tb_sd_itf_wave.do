onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/sysclk
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/rst_n
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/valid_sd
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/twinkle
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} -radix binary /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/dp
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/vld
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/point
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/sel
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/tw
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/sel_sd
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/upgrade
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/move
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/keep
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} -color Yellow -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/state1
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} -color Yellow -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/state2
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} -color Violet -radix unsigned -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/cnt_595
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} -color Violet -radix unsigned -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/cnt_14
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} -color Violet -radix unsigned -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/cnt_1000
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} -radix binary -childformat {{{/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/reg_dp[5]} -radix binary} {{/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/reg_dp[4]} -radix binary} {{/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/reg_dp[3]} -radix binary} {{/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/reg_dp[2]} -radix binary} {{/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/reg_dp[1]} -radix binary} {{/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/reg_dp[0]} -radix binary}} -radixshowbase 0 -subitemconfig {{/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/reg_dp[5]} {-radix binary -radixshowbase 0} {/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/reg_dp[4]} {-radix binary -radixshowbase 0} {/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/reg_dp[3]} {-radix binary -radixshowbase 0} {/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/reg_dp[2]} {-radix binary -radixshowbase 0} {/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/reg_dp[1]} {-radix binary -radixshowbase 0} {/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/reg_dp[0]} {-radix binary -radixshowbase 0}} /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/reg_dp
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} -color Cyan /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/stcp
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf} -color Cyan /tb_sd_itf/inst_sd_itf/inst_ctrl_sd_itf/shcp
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/sysclk
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/rst_n
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/num6
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/num5
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/num4
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/num3
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/num2
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/num1
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/vld
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/sel
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/tw
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/sel_sd
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/dp
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/upgrade
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/move
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/keep
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} -color {Violet Red} -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/data6
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} -color {Violet Red} -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/data5
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} -color {Violet Red} -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/data4
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} -color {Violet Red} -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/data3
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} -color {Violet Red} -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/data2
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} -color {Violet Red} -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/data1
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} -color {Violet Red} -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/data
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} -color Cyan -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/data_comb
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} -color Cyan -radix binary -radixshowbase 0 /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/data_shift
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/d_p
add wave -noupdate -expand -label sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/Group1 -group {Region: sim:/tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf} /tb_sd_itf/inst_sd_itf/inst_datapath_sd_itf/ds
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {2100 us}
