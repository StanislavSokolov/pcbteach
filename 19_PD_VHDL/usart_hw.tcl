# TCL File Generated by Component Editor 21.1
# Wed Dec 07 20:53:09 GST 2022
# DO NOT MODIFY


# 
# usart "usart" v1.0
#  2022.12.07.20:53:09
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module usart
# 
set_module_property DESCRIPTION ""
set_module_property NAME usart
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME usart
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL usart
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file usart.vhd VHDL PATH components/usart.vhd TOP_LEVEL_FILE


# 
# parameters
# 
add_parameter CLK_FREQ_HZ INTEGER 50000000
set_parameter_property CLK_FREQ_HZ DEFAULT_VALUE 50000000
set_parameter_property CLK_FREQ_HZ DISPLAY_NAME CLK_FREQ_HZ
set_parameter_property CLK_FREQ_HZ TYPE INTEGER
set_parameter_property CLK_FREQ_HZ UNITS None
set_parameter_property CLK_FREQ_HZ ALLOWED_RANGES -2147483648:2147483647
set_parameter_property CLK_FREQ_HZ HDL_PARAMETER true
add_parameter BAUD_RATE INTEGER 9600
set_parameter_property BAUD_RATE DEFAULT_VALUE 9600
set_parameter_property BAUD_RATE DISPLAY_NAME BAUD_RATE
set_parameter_property BAUD_RATE TYPE INTEGER
set_parameter_property BAUD_RATE UNITS None
set_parameter_property BAUD_RATE ALLOWED_RANGES -2147483648:2147483647
set_parameter_property BAUD_RATE HDL_PARAMETER true
add_parameter DATA_BITS INTEGER 8
set_parameter_property DATA_BITS DEFAULT_VALUE 8
set_parameter_property DATA_BITS DISPLAY_NAME DATA_BITS
set_parameter_property DATA_BITS TYPE INTEGER
set_parameter_property DATA_BITS UNITS None
set_parameter_property DATA_BITS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property DATA_BITS HDL_PARAMETER true
add_parameter PARITY INTEGER 0
set_parameter_property PARITY DEFAULT_VALUE 0
set_parameter_property PARITY DISPLAY_NAME PARITY
set_parameter_property PARITY TYPE INTEGER
set_parameter_property PARITY UNITS None
set_parameter_property PARITY ALLOWED_RANGES -2147483648:2147483647
set_parameter_property PARITY HDL_PARAMETER true
add_parameter STOP_BITS INTEGER 1
set_parameter_property STOP_BITS DEFAULT_VALUE 1
set_parameter_property STOP_BITS DISPLAY_NAME STOP_BITS
set_parameter_property STOP_BITS TYPE INTEGER
set_parameter_property STOP_BITS UNITS None
set_parameter_property STOP_BITS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property STOP_BITS HDL_PARAMETER true


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
# connection point ser
# 
add_interface ser conduit end
set_interface_property ser associatedClock clock
set_interface_property ser associatedReset reset
set_interface_property ser ENABLED true
set_interface_property ser EXPORT_OF ""
set_interface_property ser PORT_NAME_MAP ""
set_interface_property ser CMSIS_SVD_VARIABLES ""
set_interface_property ser SVD_ADDRESS_GROUP ""

add_interface_port ser rx rxd Input 1
add_interface_port ser tx txd Output 1


# 
# connection point usart_port
# 
add_interface usart_port conduit end
set_interface_property usart_port associatedClock clock
set_interface_property usart_port associatedReset reset
set_interface_property usart_port ENABLED true
set_interface_property usart_port EXPORT_OF ""
set_interface_property usart_port PORT_NAME_MAP ""
set_interface_property usart_port CMSIS_SVD_VARIABLES ""
set_interface_property usart_port SVD_ADDRESS_GROUP ""

add_interface_port usart_port tx_data tx_data Input 16
add_interface_port usart_port rx_data rx_data Output 16
add_interface_port usart_port tx_dv tx_dv Input 1
add_interface_port usart_port rx_dv rx_ready Output 1
add_interface_port usart_port rx_busy rx_busy Output 1
add_interface_port usart_port tx_ready tx_ready Output 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset en reset_n Input 1
