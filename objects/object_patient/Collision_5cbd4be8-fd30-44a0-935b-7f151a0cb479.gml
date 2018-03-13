/// @description Insert description here
// You can write your code in this editor
hp -=0.5;
if(canPlaySound){
		audio_play_sound(sound_patientHurt,1,false);
		canPlaySound = false;
		alarm_set(0,30);
	}