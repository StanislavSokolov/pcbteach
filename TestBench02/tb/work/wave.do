onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /task02_tb/tp
add wave -noupdate /task02_tb/clk_tb
add wave -noupdate /task02_tb/clk_tp
add wave -noupdate /task02_tb/datain_tb
add wave -noupdate /task02_tb/address_tb
add wave -noupdate /task02_tb/w_r_tb
add wave -noupdate /task02_tb/dataout_tb
add wave -noupdate /task02_tb/memory
add wave -noupdate /task02_tb/enableRead
add wave -noupdate /task02_tb/enableReadPrev
add wave -noupdate /task02_tb/enableWrite
add wave -noupdate /task02_tb/enableWritePrev
add wave -noupdate /task02_tb/enableCheck
add wave -noupdate /task02_tb/enableCheckPrev
add wave -noupdate /task02_tb/finishRead
add wave -noupdate /task02_tb/x_tb
add wave -noupdate /task02_tb/y_tb
add wave -noupdate /task02_tb/countMem
add wave -noupdate /task02_tb/stateRWCM
add wave -noupdate /task02_tb/stateCM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {0 ps} {10185 ns}
