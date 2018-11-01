set_global_assignment -entity "pll" -library "lib_pll" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "pll" -library "lib_pll" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "pll" -library "lib_pll" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_pll" -name SPD_FILE [file join $::quartus(sip_path) "../pll.spd"]
set_global_assignment -library "lib_pll" -name MISC_FILE [file join $::quartus(sip_path) "../../pll.qsys"]

set_global_assignment -library "lib_pll" -name MISC_FILE [file join $::quartus(sip_path) "pll.v"]
set_global_assignment -library "lib_pll" -name MISC_FILE [file join $::quartus(sip_path) "submodules/pll_video_pll_0.v"]
set_global_assignment -library "lib_pll" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_avalon_reset_from_locked_signal.v"]
set_global_assignment -library "lib_pll" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_altpll.v"]
