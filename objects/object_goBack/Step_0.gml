/// @description Insert description here
// You can write your code in this editor
if(position_meeting(mouse_x,mouse_y,self)){
	image_index = 1;
	if(audioPlayed == false){
		audio_play_sound(sound_mainMenuButtonHover,1,false);
		audioPlayed = true;
		}
} else {
	image_index = 0;
	audioPlayed = false;
}