hp -=1;
if(canPlaySound){
		audio_play_sound(sound_patientHurt,1,false);
		canPlaySound = false;
		alarm_set(0,30);
	}