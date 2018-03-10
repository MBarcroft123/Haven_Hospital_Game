/// @description Insert description here
// You can write your code in this editor
if(position_meeting(mouse_x,mouse_y,self)){
	audio_play_sound(sound_mainMenuButtonClick,1,false);
	alarm_set(0,5);
}