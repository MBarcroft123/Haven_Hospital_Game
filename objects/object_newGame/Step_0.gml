/// @description Insert description here
// You can write your code in this editor
if(position_meeting(mouse_x,mouse_y,self)){
	image_blend = make_colour_hsv(0, 0, 200);
	if(audioPlayed == false){
		audio_play_sound(sound_mainMenuButtonHover,1,false);
		audioPlayed = true;
		}
} else {
	image_blend = make_colour_hsv(0, 0, 255);
	audioPlayed = false;
}