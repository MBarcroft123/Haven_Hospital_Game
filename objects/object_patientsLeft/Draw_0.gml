/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_red);
draw_set_font(font0);
draw_text_transformed(x, y, string(global.patientsSaved) + "/" + string(saveGoal), 1, 1, 0);