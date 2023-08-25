proc win {} {
    start_gui
    gui_show_window -window [gui_get_current_window]
}
proc selectInst {args} {
    puts $args
    change_selection [get_cells $args ] -add
}

proc selectInstByCellName {args} {
    puts $args
    change_selection [get_cells -hi -fi "ref_name =~ $args" ]
}

proc selectInsts {args} {
    puts $args
    change_selection [get_cells -hi -fi "full_name =~ $args" ] -add
}

proc selectNet {args} {
    puts $args
    change_selection [get_netss $args ] -add
}

proc selectNets {args} {
    puts $args
    change_selection [get_nets -hi -fi "full_name =~ $args" ] -add
}
