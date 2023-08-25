proc selectInst {args} {
    puts $args
    change_selection [get_cells $args ] -add
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
