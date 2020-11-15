draw_self();

draw_sprite_ext(spr_Mini_Boss_Right,0, x1-30, y1+10,  0.65,0.65,0,c_white,1);
draw_healthbar( x1, y1, x2,  y2, (bosshealth/maxHealth)*100, c_black, $FF0000FF & $FFFFFF, c_red, 0, true, true);
