/// @description Maybe this will work
// Overly complicated method of choosing a random path. 
// It is a pain in the ass, but the way it works is it checks the current path
// -path stepper, and then chooses randomly between the two. This is for Doctors,
// I'll add in them being directed by light towers soon.
// YOU MUST USE THE EXIT FUNCTION FOR THIS TO WORK!!!
// if you don't exit, it will continue through the whole list and it will break
//*A physical representation of the complete pathing can be viewed from room0*

if (room == room0)
{
	if(pathStepper == "start"){
		pathStepper = choose("A","B");
		if(pathStepper == "A"){
			path_start(pathA,2,path_action_stop,false);
			exit;
		}
		if(pathStepper == "B"){
			path_start(pathB,2,path_action_stop,false);
			exit;
		}
	}
	if(pathStepper == "A"){
		pathStepper = choose("C","D");
		if(pathStepper == "C"){
			path_start(pathC,2,path_action_stop,false);	
			exit;
		}
		if(pathStepper == "D"){
			path_start(pathD,2,path_action_stop,false);	
			exit;
		}
	}

	if(pathStepper == "B"){
		pathStepper = choose("C2","E");
		if(pathStepper == "C2"){
			path_start(pathC2,2,path_action_stop,false);	
			exit;
		}
		if(pathStepper == "E"){
			path_start(pathE,2,path_action_stop,false);
			exit;
		}
	}

	if(pathStepper == "C"){
			pathStepper = "E";
			//no choice for this one, would make stuff too confusing
			path_start(pathE,2,path_action_stop,false);
			exit;
	}
	if(pathStepper == "C2"){
		pathStepper = "D";
		//no choice
		path_start(pathD,2,path_action_stop,false);
		exit;
	}
	if(pathStepper == "D"){
		pathStepper = choose("G","H");	
			if(pathStepper == "G"){
				path_start(pathG,2,path_action_stop,false);
				exit;
			}
			if(pathStepper == "H"){
				path_start(pathH,2,path_action_stop,false);
				exit;
			}
	}
	if(pathStepper == "E"){
		pathStepper = choose ("F","G2");
			if(pathStepper == "F"){
				path_start(pathF,2,path_action_stop,false);	
				exit;
			}
			if(pathStepper == "G2"){
				path_start(pathG2,2,path_action_stop,false);
				exit;
			}
	}
	if(pathStepper == "F"){
		pathStepper = choose("K","M");
		if(pathStepper == "K"){
			path_start(pathK,2,path_action_stop,false);
			exit;
		}
		if(pathStepper == "M"){
			path_start(pathM,2,path_action_stop,false);
			exit;
		}
	}
	if(pathStepper == "G"){
		pathStepper = "F";
		path_start(pathF,2,path_action_stop,false);
		exit;
	}
	if(pathStepper == "G2"){
		pathStepper = "H";
		path_start(pathH,2,path_action_stop,false);
		exit;
	}
	if(pathStepper == "H"){
		pathStepper = choose("I","J");
		if(pathStepper == "I"){
			path_start(pathI,2,path_action_stop,false);
			exit;
		}
		if(pathStepper == "J"){
			path_start(pathJ,2,path_action_stop,false);
			exit;
		}
	}
	if(pathStepper == "I"){
		pathStepper = choose("L","K2");
		if(pathStepper == "L"){
			path_start(pathL,2,path_action_stop,false);
			exit;
		}
		if(pathStepper == "K2"){
			path_start(pathK2,2,path_action_stop,false);
			exit;
		}
	}
	if(pathStepper == "I2"){
		pathStepper = "J";
		path_start(pathJ,2,path_action_stop,false);
		exit;
	}
	if(pathStepper == "J"){
		pathStepper = "J2";
		path_start(pathJ2,2,path_action_stop,false);
		exit;
	}

	if(pathStepper == "J2"){
		pathStepper = "J3";
		path_start(pathJ3,2,path_action_stop,false);
		exit;
	}

	if(pathStepper == "K"){
		pathStepper = choose("I2","L");
		if(pathStepper == "I2"){
			path_start(pathI2,2,path_action_stop,false);
			exit;
		}
		if(pathStepper == "L"){
			path_start(pathL,2,path_action_stop,false);
			exit;
		}
	}

	if(pathStepper == "L"){
		pathStepper = "L2";
		path_start(pathL2,2,path_action_stop,false);
		exit;
	}


	if(pathStepper == "K2"){
		pathStepper = "M";
		path_start(pathM,2,path_action_stop,false);
		exit;
	}
	//NO ENDING L!!
	if(pathStepper == "M"){
		pathStepper = "M2";
		path_start(pathM2,2,path_action_stop,false);
		exit;
	}

	if(pathStepper == "M2"){
		pathStepper = "M3";
		path_start(pathM3,2,path_action_stop,false);
		exit;
	}
}	
	
	
//
//  room1 STARTS HERE
//
	
	
if (room == room1)
{
	if(pathStepper == "doctor40") 
	{
		pathStepper = choose("path48","path41A");
		if(pathStepper == "path48")
		{
			path_start(path134,2,path_action_stop,false);
			exit;
		}
		if(pathStepper == "path41A")
		{
			path_start(path132,2,path_action_stop,false);
			exit;
		}
	}
	
	if(pathStepper == "path48") 
	{
		pathStepper = choose("path48A","path48B");
		if(pathStepper == "path48A")
		{
			path_start(path137,2,path_action_stop,false);
			exit;
		}
		if(pathStepper == "path48B")
		{
			path_start(path138,2,path_action_stop,false);
			exit;
		}
	}
	
	if(pathStepper == "path48A") 
	{
		pathStepper = choose("path47A","path44B");
		if(pathStepper == "path47A")
		{
			path_start(path130,2,path_action_stop,false);
			exit;
		}
		if(pathStepper == "path44B")
		{
			path_start(path126,2,path_action_stop,false);
			exit;
		}
	}
	
	if(pathStepper == "path48B") 
	{
		pathStepper = choose("path47A","path47B");
		if(pathStepper == "path47A")
		{
			path_start(path130,2,path_action_stop,false);
			exit;
		}
		if(pathStepper == "path47B")
		{
			path_start(path131,2,path_action_stop,false);
			exit;
		}
	}
	
	if(pathStepper == "path41A") 
	{
		pathStepper = "path41";
		path_start(path120,2,path_action_stop,false);
		exit;	
	}
	
	if(pathStepper == "path41") 
		pathStepper = "path40";
		path_start(path119,2,path_action_stop,false);
		exit;
	}
	
	//if(pathStepper == "path40") 
	//{
	//	pathStepper = choose("path40A","path40B");
	//	if(pathStepper == "path40A")
	//	{
	//		path_start(path121,2,path_action_stop,false);
	//		exit;
	//	}
	//	if(pathStepper == "path40B")
	//	{
	//		path_start(path122,2,path_action_stop,false);
	//		exit;
	//	}
	//}
	
	//if(pathStepper == "path40A") 
	//{
	//	pathStepper = choose("path42","path43");
	//	if(pathStepper == "path42")
	//	{
	//		path_start(path123,2,path_action_stop,false);
	//		exit;
	//	}
	//	if(pathStepper == "path43")
	//	{
	//		path_start(path124,2,path_action_stop,false);
	//		exit;
	//	}
	//}
	
	//if(pathStepper == "path40B") 
	//{
	//	pathStepper = choose("path44A","path44B");
	//	if(pathStepper == "path44A")
	//	{
	//		path_start(path125,2,path_action_stop,false);
	//		exit;
	//	}
	//	if(pathStepper == "path44B")
	//	{
	//		path_start(path126,2,path_action_stop,false);
	//		exit;
	//	}
	//}
	
	//if(pathStepper == "path43") 
	//{
	//	pathStepper = choose("path49A","path45A");
	//	if(pathStepper == "path49A")
	//	{
	//		path_start(path52,2,path_action_stop,false);
	//		exit;
	//	}
	//	if(pathStepper == "path45A")
	//	{
	//		path_start(path127,2,path_action_stop,false);
	//		exit;
	//	}
	//}
	
	//if(pathStepper == "path44B") 
	//{
	//	pathStepper = choose("path47A","path48A");
	//	if(pathStepper == "path47A")
	//	{
	//		path_start(path130,2,path_action_stop,false);
	//		exit;
	//	}
	//	if(pathStepper == "path48A")
	//	{
	//		path_start(path137,2,path_action_stop,false);
	//		exit;
	//	}
	//}
	
	//if(pathStepper == "path47A")
	//{
	//	pathStepper = "path44B";
	//	path_start(path128,2,path_action_stop,false);
	//	exit;
	//}
	
	//if(pathStepper == "path47B")
	//{
	//	pathStepper = choose("path45B","path46");
	//	if(pathStepper == "path45B")
	//	{
	//		path_start(path128,2,path_action_stop,false);
	//		exit;
	//	}
	//	if(pathStepper == "path46")
	//	{
	//		path_start(path129,2,path_action_stop,false);
	//		exit;
	//	}
	//}
	
	//if(pathStepper == "path46")
	//{
	//	pathStepper = choose("path49A","path49B","path46Z");
	//	if(pathStepper == "path49A")
	//	{
	//		path_start(path121,2,path_action_stop,false);
	//		exit;
	//	}
	//	if(pathStepper == "path49B")
	//	{
	//		path_start(path122,2,path_action_stop,false);
	//		exit;
	//	}
	//	if(pathStepper == "path46Z")
	//	{
	//		path_start(path55,2,path_action_stop,false);
	//		exit;
	//	}
		
	//}
	
	//if(pathStepper == "path45B") 
	//{
	//	pathStepper = choose("path44A","path45A");
	//	if(pathStepper == "path44A")
	//	{
	//		path_start(path125,2,path_action_stop,false);
	//		exit;
	//	}
	//	if(pathStepper == "path45A")
	//	{
	//		path_start(path127,2,path_action_stop,false);
	//		exit;
	//	}
	//}
	
	//if(pathStepper == "path44A")
	//{
	//	pathStepper = choose("path45A","path45B");
	//	if(pathStepper == "path45A")
	//	{
	//		path_start(path127,2,path_action_stop,false);
	//		exit;
	//	}
	//	if(pathStepper == "path45B")
	//	{
	//		path_start(path128,2,path_action_stop,false);
	//		exit;
	//	}
	//}
	
	//if(pathStepper == "path45A") 
	//{
	//	pathStepper = choose("path43");
	//	if(pathStepper == "path43")
	//	{
	//		path_start(path124,2,path_action_stop,false);
	//		exit;
	//	}
		
	//}
	
	//if(pathStepper == "path42") 
	//{
	//	pathStepper = choose("path42","path49B");
	//	if(pathStepper == "path42")
	//	{
	//		path_start(path123,2,path_action_stop,false);
	//		exit;
	//	}
	//	if(pathStepper == "path49B")
	//	{
	//		path_start(path53,2,path_action_stop,false);
	//		exit;
	//	}
	//}
	
	//if(pathStepper == "path49A") 
	//{
	//	pathStepper = choose("path43Z","path43Z1");
	//	if(pathStepper == "path43Z")
	//	{
	//		path_start(path56,2,path_action_stop,false);
	//		exit;
	//	}
	//	if(pathStepper == "path43Z1")
	//	{
	//		path_start(path57,2,path_action_stop,false);
	//		exit;
	//	}
	//}
	
	//if(pathStepper == "path49B") 
	//{
	//	pathStepper = choose("path42Z","path46");
	//	if(pathStepper == "path42Z")
	//	{
	//		path_start(path54,2,path_action_stop,false);
	//		exit;
	//	}
	//	if(pathStepper == "path46")
	//	{
	//		path_start(path129,2,path_action_stop,false);
	//		exit;
	//	}
	//}
	
	//if(pathStepper == "path46Z")
	//	{
	//		path_start(path55,2,path_action_stop,false);
	//		exit;
	//	}



//
//  room2 STARTS HERE
//

//if (room == room2)
//{
	
	
	
	
	
	
	
	
	
	
//}