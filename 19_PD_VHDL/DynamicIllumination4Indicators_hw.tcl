# TCL File Generated by Component Editor 22.1
# Thu Apr 11 12:03:41 MSK 2024
# DO NOT MODIFY


# 
# DynamicIllumination4Indicators "DynamicIllumination4Indicators" v1.0
#  2024.04.11.12:03:41
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module DynamicIllumination4Indicators
# 
set_module_property DESCRIPTION ""
set_module_property NAME DynamicIllumination4Indicators
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME DynamicIllumination4Indicators
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL DynamicIllumination4Indicators
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file DynamicIllumination4Indicators.vhd VHDL PATH components/DynamicIllumination4Indicators.vhd TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point indicator
# 
add_interface indicator conduit end
set_interface_property indicator associatedClock clk
set_interface_property indicator associatedReset ""
set_interface_property indicator ENABLED true
set_interface_property indicator EXPORT_OF ""
set_interface_property indicator PORT_NAME_MAP ""
set_interface_property indicator CMSIS_SVD_VARIABLES ""
set_interface_property indicator SVD_ADDRESS_GROUP ""

add_interface_port indicator indicator indicator Output 4


# 
# connection point enable
# 
add_interface enable conduit end
set_interface_property enable associatedClock clk
set_interface_property enable associatedReset ""
set_interface_property enable ENABLED true
set_interface_property enable EXPORT_OF ""
set_interface_property enable PORT_NAME_MAP ""
set_interface_property enable CMSIS_SVD_VARIABLES ""
set_interface_property enable SVD_ADDRESS_GROUP ""

add_interface_port enable enable enable Input 4


# 
# connection point indicator0
# 
add_interface indicator0 conduit end
set_interface_property indicator0 associatedClock clk
set_interface_property indicator0 associatedReset ""
set_interface_property indicator0 ENABLED true
set_interface_property indicator0 EXPORT_OF ""
set_interface_property indicator0 PORT_NAME_MAP ""
set_interface_property indicator0 CMSIS_SVD_VARIABLES ""
set_interface_property indicator0 SVD_ADDRESS_GROUP ""

add_interface_port indicator0 indicator0 indic0 Input 8


# 
# connection point indicator1
# 
add_interface indicator1 conduit end
set_interface_property indicator1 associatedClock clk
set_interface_property indicator1 associatedReset ""
set_interface_property indicator1 ENABLED true
set_interface_property indicator1 EXPORT_OF ""
set_interface_property indicator1 PORT_NAME_MAP ""
set_interface_property indicator1 CMSIS_SVD_VARIABLES ""
set_interface_property indicator1 SVD_ADDRESS_GROUP ""

add_interface_port indicator1 indicator1 indic1 Input 8


# 
# connection point indicator2
# 
add_interface indicator2 conduit end
set_interface_property indicator2 associatedClock clk
set_interface_property indicator2 associatedReset ""
set_interface_property indicator2 ENABLED true
set_interface_property indicator2 EXPORT_OF ""
set_interface_property indicator2 PORT_NAME_MAP ""
set_interface_property indicator2 CMSIS_SVD_VARIABLES ""
set_interface_property indicator2 SVD_ADDRESS_GROUP ""

add_interface_port indicator2 indicator2 indic2 Input 8


# 
# connection point indicator3
# 
add_interface indicator3 conduit end
set_interface_property indicator3 associatedClock clk
set_interface_property indicator3 associatedReset ""
set_interface_property indicator3 ENABLED true
set_interface_property indicator3 EXPORT_OF ""
set_interface_property indicator3 PORT_NAME_MAP ""
set_interface_property indicator3 CMSIS_SVD_VARIABLES ""
set_interface_property indicator3 SVD_ADDRESS_GROUP ""

add_interface_port indicator3 indicator3 indicator3 Input 8


# 
# connection point segment
# 
add_interface segment conduit end
set_interface_property segment associatedClock clk
set_interface_property segment associatedReset ""
set_interface_property segment ENABLED true
set_interface_property segment EXPORT_OF ""
set_interface_property segment PORT_NAME_MAP ""
set_interface_property segment CMSIS_SVD_VARIABLES ""
set_interface_property segment SVD_ADDRESS_GROUP ""

add_interface_port segment segment segment Output 8


# 
# connection point clk
# 
add_interface clk clock end
set_interface_property clk clockRate 0
set_interface_property clk ENABLED true
set_interface_property clk EXPORT_OF ""
set_interface_property clk PORT_NAME_MAP ""
set_interface_property clk CMSIS_SVD_VARIABLES ""
set_interface_property clk SVD_ADDRESS_GROUP ""

add_interface_port clk clk clk Input 1

