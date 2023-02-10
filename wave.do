onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/DUT/clk
add wave -noupdate /tb/DUT/rst
add wave -noupdate /tb/DUT/data_in
add wave -noupdate /tb/DUT/eqz
add wave -noupdate /tb/DUT/bus_in
add wave -noupdate /tb/DUT/ld_a
add wave -noupdate /tb/DUT/ld_b
add wave -noupdate /tb/DUT/ld_p
add wave -noupdate /tb/DUT/dec_b
add wave -noupdate /tb/DUT/clr_p
add wave -noupdate /tb/DUT/out_a
add wave -noupdate /tb/DUT/out_p
add wave -noupdate /tb/DUT/out_b
add wave -noupdate /tb/DUT/adder_out
add wave -noupdate /tb/DUT/fsm/clk
add wave -noupdate /tb/DUT/fsm/rst
add wave -noupdate /tb/DUT/fsm/start
add wave -noupdate /tb/DUT/fsm/eqz
add wave -noupdate /tb/DUT/fsm/ld_a
add wave -noupdate /tb/DUT/fsm/ld_p
add wave -noupdate /tb/DUT/fsm/ld_b
add wave -noupdate /tb/DUT/fsm/dec
add wave -noupdate /tb/DUT/fsm/clr
add wave -noupdate /tb/DUT/fsm/state
add wave -noupdate /tb/DUT/fsm/ld_a_r
add wave -noupdate /tb/DUT/fsm/ld_b_r
add wave -noupdate /tb/DUT/A/out_a
add wave -noupdate /tb/DUT/A/add_out
add wave -noupdate /tb/DUT/A/A
add wave -noupdate /tb/DUT/A/ld_a
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {150 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {400 ps}
