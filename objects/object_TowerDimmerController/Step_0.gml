/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button(1)!=true){
	slowDown --;
	if(slowDown == 0){
	instance_destroy(instance_find(light_controller_Denis, 0));
	slowDown = 7;
	}
}