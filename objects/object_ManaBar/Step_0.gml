/// @description Handles roomHealth and manaRegen checks
// You can write your code in this editor
if(global.roomHealth <= 0){
	object_Janet.sprite_index = sprite_JanetDeath
	if( object_Janet.sprite_index == sprite_JanetDeath && sprite_JanetDeath.image_index == 33)
	{
		room_goto(room_youLoseJanetHealth)
	}
}


if(global.manaRegenerate)
{
	global.mana += .5;
	if(global.mana > 100)
		global.manaRegenerate = false;
}