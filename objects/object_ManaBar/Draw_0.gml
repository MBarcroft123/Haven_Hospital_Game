/// @description UI display for roomHealth and mana
// You can write your code in this editor
val = global.mana/100;
val2 = global.roomHealth/100;
draw_set_color(c_blue);
draw_rectangle(x+120,y+228,x+120+(x+240)*(val),y+284,0);
draw_set_color(c_red);
draw_rectangle(x+120,y+162,x+120+(x+240-x)*(val2),y+215,0);
draw_self();
draw_sprite(sprite_healthBar, image_index, x, y+190);