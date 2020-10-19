/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 3960D749
/// @DnDArgument : "font" "Font_cambria"
/// @DnDSaveInfo : "font" "Font_cambria"
draw_set_font(Font_cambria);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 16CDE52F
/// @DnDArgument : "x" "855"
/// @DnDArgument : "y" "725"
/// @DnDArgument : "caption" ""Time Reversals left: ""
/// @DnDArgument : "var" "obj_switch.switchCount"
draw_text(855, 725, string("Time Reversals left: ") + string(obj_switch.switchCount));

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