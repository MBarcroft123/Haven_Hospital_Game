/// @description Insert description here
// You can write your code in this editor
hp -=5;
audio_play_sound(sound_doctorHurt,1,false);
with(other) instance_destroy();