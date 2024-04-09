# TCL File Generated by Component Editor 22.1
# Tue Apr 09 18:43:20 MSK 2024
# DO NOT MODIFY


# 
# controller "controller" v1.0
#  2024.04.09.18:43:20
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module controller
# 
set_module_property DESCRIPTION ""
set_module_property NAME controller
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME controller
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL controller
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file controller.vhd VHDL PATH components/controller.vhd
add_fileset_file i2c_pkg.vhd VHDL PATH components/i2c_pkg.vhd


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset_n
# 
add_interface reset_n reset end
set_interface_property reset_n associatedClock clock
set_interface_property reset_n synchronousEdges DEASSERT
set_interface_property reset_n ENABLED true
set_interface_property reset_n EXPORT_OF ""
set_interface_property reset_n PORT_NAME_MAP ""
set_interface_property reset_n CMSIS_SVD_VARIABLES ""
set_interface_property reset_n SVD_ADDRESS_GROUP ""

add_interface_port reset_n en reset_n Input 1


# 
# connection point uart_port
# 
add_interface uart_port conduit end
set_interface_property uart_port associatedClock clock
set_interface_property uart_port associatedReset reset_n
set_interface_property uart_port ENABLED true
set_interface_property uart_port EXPORT_OF ""
set_interface_property uart_port PORT_NAME_MAP ""
set_interface_property uart_port CMSIS_SVD_VARIABLES ""
set_interface_property uart_port SVD_ADDRESS_GROUP ""

add_interface_port uart_port uart_rx_busy rx_busy Input 1
add_interface_port uart_port uart_rx_data rx_data Input 16
add_interface_port uart_port uart_rx_ready rx_ready Input 1
add_interface_port uart_port uart_tx_data tx_data Output 16
add_interface_port uart_port uart_tx_dv tx_dv Output 1
add_interface_port uart_port uart_tx_ready tx_ready Input 1


# 
# connection point i2c_port
# 
add_interface i2c_port conduit end
set_interface_property i2c_port associatedClock clock
set_interface_property i2c_port associatedReset reset_n
set_interface_property i2c_port ENABLED true
set_interface_property i2c_port EXPORT_OF ""
set_interface_property i2c_port PORT_NAME_MAP ""
set_interface_property i2c_port CMSIS_SVD_VARIABLES ""
set_interface_property i2c_port SVD_ADDRESS_GROUP ""

add_interface_port i2c_port i2c_ack_error ack_error Bidir 1
add_interface_port i2c_port i2c_addr addr Output 7
add_interface_port i2c_port i2c_busy busy Input 1
add_interface_port i2c_port i2c_data_rd data_rd Input 8
add_interface_port i2c_port i2c_data_wr data_wr Output 8
add_interface_port i2c_port i2c_ena ena Output 1
add_interface_port i2c_port i2c_rw rw Output 1


# 
# connection point leds
# 
add_interface leds conduit end
set_interface_property leds associatedClock clock
set_interface_property leds associatedReset reset_n
set_interface_property leds ENABLED true
set_interface_property leds EXPORT_OF ""
set_interface_property leds PORT_NAME_MAP ""
set_interface_property leds CMSIS_SVD_VARIABLES ""
set_interface_property leds SVD_ADDRESS_GROUP ""

add_interface_port leds leds leds Output 4


# 
# connection point key
# 
add_interface key conduit end
set_interface_property key associatedClock clock
set_interface_property key associatedReset ""
set_interface_property key ENABLED true
set_interface_property key EXPORT_OF ""
set_interface_property key PORT_NAME_MAP ""
set_interface_property key CMSIS_SVD_VARIABLES ""
set_interface_property key SVD_ADDRESS_GROUP ""

add_interface_port key key1 key1 Input 1


# 
# connection point dataToUpdate
# 
add_interface dataToUpdate conduit end
set_interface_property dataToUpdate associatedClock clock
set_interface_property dataToUpdate associatedReset ""
set_interface_property dataToUpdate ENABLED true
set_interface_property dataToUpdate EXPORT_OF ""
set_interface_property dataToUpdate PORT_NAME_MAP ""
set_interface_property dataToUpdate CMSIS_SVD_VARIABLES ""
set_interface_property dataToUpdate SVD_ADDRESS_GROUP ""

add_interface_port dataToUpdate dataToUpdate data Output 8

