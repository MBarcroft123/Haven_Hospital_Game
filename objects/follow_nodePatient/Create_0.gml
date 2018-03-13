/// @description Insert description here
// You can write your code in this editor

if (room == room0)
{
	instance_create_depth(x + 0, y -30, 99, object_patient);
	pathStepper = "N";
	path_start(pathN, 1, path_action_stop, false);
}

if (room == room1)
{
	instance_create_depth(x + 0, y -30, 99, object_patient);
	pathStepper = "patient40";
	path_start(path118, 1, path_action_stop, false);
}

//if (room == room2)
//{
//	instance_create_depth(x + 0, y -30, 99, object_patient);
//	pathStepper = "patient346";
//	path_start(pathxxx, 1, path_action_stop, false);
//}