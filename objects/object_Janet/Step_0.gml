/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("A")) ||keyboard_check(ord("S")) || keyboard_check(ord("D")) || keyboard_check(ord("W"))){
	isWalking = true;
} else {
	isWalking = false;	
}

if(isWalking == false){
	sprite_index = sprite_Janet;
	if(place_free(x, y)!=true){
		isLayingDown = true;
//	show_debug_message("coolio");
	}
else{
	isLayingDown = false;	
	}
}
if(place_free(x, y)){
	playerSpeed = 5;
	light_follow_Janet_Denis.janetCrawl = false;
	if (keyboard_check(ord("A")) && keyboard_check(ord("W")) || keyboard_check(ord("A")) && keyboard_check(ord("S")))
	{
		playerSpeed = 3.5;
	} 
	else if ( keyboard_check(ord("D")) && keyboard_check(ord("W")) || keyboard_check(ord("D")) && keyboard_check(ord("S")))
	{
		playerSpeed = 3.5;
	}
	
	if(keyboard_check(ord("A")) && keyboard_check(ord("D")))
	{
		//image_xscale = -0.4375; Extra line messing around with image scaling;
		sprite_index = sprite_Janet;
		playerSpeed = 0;	
	}
	else if(keyboard_check(ord("W")) && keyboard_check(ord("S")))
	{
		sprite_index = sprite_Janet;
		playerSpeed = 0;
	}
}
else {
	playerSpeed = 3;
	if(isLayingDown){
		sprite_index = sprite_JanetCrawlIdle;
	}
	else{
	sprite_index = sprite_JanetCrawl;
	}
	light_follow_Janet_Denis.janetCrawl = true;
	if (keyboard_check(ord("A")) && keyboard_check(ord("W")) || keyboard_check(ord("A")) && keyboard_check(ord("S")))
	{
		playerSpeed = 2.1;
	} 
	else if ( keyboard_check(ord("D")) && keyboard_check(ord("W")) || keyboard_check(ord("D")) && keyboard_check(ord("S")))
	{
		playerSpeed = 2.1;
	}
	
	if(keyboard_check(ord("A")) && keyboard_check(ord("D")))
	{
		//image_xscale = -0.4375;
		sprite_index = sprite_Janet;
		playerSpeed = 0;	
	}
	else if(keyboard_check(ord("W")) && keyboard_check(ord("S")))
	{
		//image_xscale = -0.4375;
		sprite_index = sprite_Janet;
		playerSpeed = 0;
	}
}
isGettingHurt = false;
if(place_meeting(x,y,object0)){
 global.roomHealth -= 1;
	isGettingHurt = true;
 if(canPlaySound){
	audio_play_sound(sound_JanetHurt,1,false);
	canPlaySound = false;
	alarm_set(0,30);
 }

}
if(hp == 0){
room_goto(room_youLose);	
}


