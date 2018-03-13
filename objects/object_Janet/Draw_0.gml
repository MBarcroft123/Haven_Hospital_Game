/// @description Insert description here
// You can write your code in this editor
draw_self();

if (isGettingHurt){
	image_blend = make_colour_hsv(255, 255, 255);	
} else {
	image_blend = make_colour_hsv(0, 0, 255);	
}