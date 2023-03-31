onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_mooth/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_mooth} -height 30 /tb_top/inst_top/inst1_pb_itf/inst_mooth/sysclk
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_mooth/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_mooth} -height 30 /tb_top/inst_top/inst1_pb_itf/inst_mooth/rst_n
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_mooth/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_mooth} -height 30 /tb_top/inst_top/inst1_pb_itf/inst_mooth/key
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_mooth/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_mooth} -height 30 /tb_top/inst_top/inst1_pb_itf/inst_mooth/key_mooth
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_mooth/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_mooth} -color Gold -height 30 -radix binary -radixshowbase 0 /tb_top/inst_top/inst1_pb_itf/inst_mooth/key_reg
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp} -height 30 /tb_top/inst_top/inst1_pb_itf/inst_sp_lp/sysclk
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp} -height 30 /tb_top/inst_top/inst1_pb_itf/inst_sp_lp/rst_n
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp} -height 30 /tb_top/inst_top/inst1_pb_itf/inst_sp_lp/key_mooth
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp} -height 30 /tb_top/inst_top/inst1_pb_itf/inst_sp_lp/key_mooth_r1
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp} -color Turquoise -height 30 /tb_top/inst_top/inst1_pb_itf/inst_sp_lp/short_pression
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp} -color Turquoise -height 30 /tb_top/inst_top/inst1_pb_itf/inst_sp_lp/long_pression
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp} -color {Violet Red} -height 30 -radix unsigned /tb_top/inst_top/inst1_pb_itf/inst_sp_lp/cnt
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp} -height 30 /tb_top/inst_top/inst1_pb_itf/inst_sp_lp/cnt_vld
add wave -noupdate -expand -label sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp/Group1 -group {Region: sim:/tb_top/inst_top/inst1_pb_itf/inst_sp_lp} -height 30 /tb_top/inst_top/inst1_pb_itf/inst_sp_lp/cnt_end
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2379697290000 ps} 0}
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
WaveRestoreZoom {0 ps} {2469067366500 ps}
