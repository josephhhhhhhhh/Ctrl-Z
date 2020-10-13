/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 2A4F60D8
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 1DD7D62F
/// @DnDArgument : "x1" "x + sprite_width/2 + 10"
/// @DnDArgument : "y1" "y - sprite_height/2"
/// @DnDArgument : "x2" "x + sprite_width/2 + 20"
/// @DnDArgument : "y2" "y + sprite_height/2 "
/// @DnDArgument : "direction" "3"
/// @DnDArgument : "value" "(bosshealth/maxHealth)*100"
/// @DnDArgument : "backcol" "$00FFFFFF"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF16FF22"
draw_healthbar(x + sprite_width/2 + 10, y - sprite_height/2, x + sprite_width/2 + 20, y + sprite_height/2 , (bosshealth/maxHealth)*100, $00FFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF16FF22 & $FFFFFF, 3, (($00FFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));