/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 16CDE52F
/// @DnDArgument : "x" "890"
/// @DnDArgument : "y" "725"
/// @DnDArgument : "caption" ""Switch Count: ""
/// @DnDArgument : "var" "obj_switch.switchCount"
draw_text(890, 725, string("Switch Count: ") + string(obj_switch.switchCount));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 40ED63BD
/// @DnDArgument : "x1" "1055"
/// @DnDArgument : "y1" "725"
/// @DnDArgument : "x2" "1310"
/// @DnDArgument : "y2" "745"
/// @DnDArgument : "value" "(obj_switch.switchCount/obj_switch.countLimit)*100"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF1ECC32"
draw_healthbar(1055, 725, 1310, 745, (obj_switch.switchCount/obj_switch.countLimit)*100, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, $FF1ECC32 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));