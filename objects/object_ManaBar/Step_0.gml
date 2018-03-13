/// @description Handles roomHealth and manaRegen checks
// You can write your code in this editor
if(global.roomHealth <= 0){
	if(janetIsDead == false)
	{	
		object_Janet.image_alpha = 0;
		instance_create_depth(object_Janet.x, object_Janet.y, object_Janet.depth, Obj_JanetDeath)
		janetIsDead = true;
	}
	if(Obj_JanetDeath.image_index == 33)
	{
		room_goto(room_youLose)
	}
}


if(global.manaRegenerate)
{
	global.mana += .5;
	if(global.mana > 100)
		global.manaRegenerate = false;
}