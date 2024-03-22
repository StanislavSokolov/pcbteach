onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /TestBench03/clk_tb
add wave -noupdate /TestBench03/rst_tb
add wave -noupdate /TestBench03/d_tb
add wave -noupdate /TestBench03/q_exp
add wave -noupdate /TestBench03/q_tb
add wave -noupdate /TestBench03/qb_tb
add wave -noupdate /TestBench03/test/clk
add wave -noupdate /TestBench03/test/reset
add wave -noupdate /TestBench03/test/d
add wave -noupdate /TestBench03/test/q
add wave -noupdate /TestBench03/test/qb
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {200200 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 178
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
WaveRestoreZoom {0 ps} {511700 ps}
