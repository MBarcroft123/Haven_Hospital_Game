
if (room == room0)
{
	instance_create_depth(x + 0, y -30, 99, object0);
	pathStepper = "start";
	path_start(pathStart, 2, path_action_stop, false);
	switch1 = 0;
}

if (room == room1)
{
	instance_create_depth(x + 0, y -30, 99, object0);
	pathStepper = "doctor40";
	path_start(path135, 2, path_action_stop, false);
	switch1 = 0;
}

//if (room == room2)
//{
//	instance_create_depth(x + 0, y -30, 99, object0);
//	pathStepper = "start";
//	path_start(pathStart, 2, path_action_stop, false);
//	switch1 = 0;
//}