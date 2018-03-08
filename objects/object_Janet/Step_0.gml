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
	
}
if(place_meeting(x,y,object0)){
 hp -= 1;	
}
if(hp == 0){
room_goto(room_youLose);	
}


