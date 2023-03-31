onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_player_itf/sysclk
add wave -noupdate /tb_player_itf/rst_n
add wave -noupdate /tb_player_itf/volume
add wave -noupdate /tb_player_itf/beep
add wave -noupdate /tb_player_itf/start
add wave -noupdate /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/volume_in
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_translater/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_translater} -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/start
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_translater/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_translater} /tb_player_itf/inst_player_itf/inst_translater/volume
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_translater/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_translater} /tb_player_itf/inst_player_itf/inst_translater/tran_vld
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_translater/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_translater} /tb_player_itf/inst_player_itf/inst_translater/tran_end
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_translater/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_translater} /tb_player_itf/inst_player_itf/inst_translater/din
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_translater/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_translater} /tb_player_itf/inst_player_itf/inst_translater/beep
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_translater/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_translater} /tb_player_itf/inst_player_itf/inst_translater/sysclk
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_translater/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_translater} /tb_player_itf/inst_player_itf/inst_translater/rst_n
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_translater/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_translater} -radix unsigned -radixshowbase 0 /tb_player_itf/inst_player_itf/inst_translater/cnt
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_translater/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_translater} /tb_player_itf/inst_player_itf/inst_translater/cnt_vld
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_translater/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_translater} /tb_player_itf/inst_player_itf/inst_translater/cnt_end
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_translater/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_translater} /tb_player_itf/inst_player_itf/inst_translater/cnt_end_num
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/start_r1
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} -radix unsigned -radixshowbase 0 /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/q_cb
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/ends
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/cnt_end
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/begins
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/cnt_vld
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/idle_to_inst
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/cnt
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/inst_to_send_ad
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/send_ad_to_idle
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/inst_to_idle
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/send_ad_to_inst
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/next_state
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} -color Yellow /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/state
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/rst_n
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/sysclk
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/add
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/sel
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} -color {Medium Violet Red} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/rom_clock
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/tran_end
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/tran_vld
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/volume_out
add wave -noupdate -expand -label sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/Group1 -group {Region: sim:/tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr} -radix binary -radixshowbase 0 /tb_player_itf/inst_player_itf/inst_cnt_addr/inst_ctrl_cnt_addr/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {140187098508 ps} 0} {{Cursor 2} {5886765710796 ps} 0} {{Cursor 3} {2395062199584 ps} 0} {{Cursor 4} {1823668064707 ps} 0} {{Cursor 5} {715997888432 ps} 0} {{Cursor 6} {1270991491256 ps} 0} {{Cursor 7} {17615111747310 ps} 0} {{Cursor 8} {1263416980000 ps} 0} {{Cursor 9} {20421010747797 ps} 0} {{Cursor 10} {20904266327618 ps} 0}
quietly wave cursor active 9
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
WaveRestoreZoom {0 ps} {94336674432 ns}
