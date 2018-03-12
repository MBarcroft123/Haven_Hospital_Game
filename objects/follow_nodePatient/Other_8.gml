/// @description Insert description here
// You can write your code in this editor

if (room == room0)
{
	if(pathStepper == "N"){
		if(inst_towerO.triggered == true && inst_towerO.chargeLevel>inst_towerP.chargeLevel){//Will lead down pathO is O is more charged than P
			path_start(pathO,1,path_action_stop,false);
			pathStepper = "O";
			exit;
		}
		if(inst_towerP.triggered == true && inst_towerP.chargeLevel>inst_towerO.chargeLevel){//Will lead down path P is P is more charged than O
			path_start(pathP,1,path_action_stop,false);
			pathStepper = "P";
			exit;
		}
	}
	if(pathStepper == "O"){//Will lead down path H if H is triggered
		if(inst_towerH.triggered == true){
			path_start(pathH,1,path_action_stop,false);
			pathStepper = "H";
			exit;
		}
	}
	if(pathStepper == "P"){
		if(inst_towerP.triggered == true){//Reuses the P tower since it is close by
			path_start(pathF,1,path_action_stop,false);
			pathStepper = "F";
			exit;
		}
	}
	if(pathStepper == "F"){
		if(inst_towerK.triggered == true && inst_towerK.chargeLevel>inst_towerM.chargeLevel){
			path_start(pathK,1,path_action_stop,false);
			pathStepper = "K";
			exit;
		}
		if(inst_towerM.triggered == true && inst_towerM.chargeLevel>inst_towerK.chargeLevel){
			path_start(pathM,1,path_action_stop,false);
			pathStepper = "M";
			exit;
		}
	}
	if(pathStepper == "M"){
		if(inst_towerM2.triggered == true){
			path_start(pathM2,1,path_action_stop,false);
			pathStepper = "M2";
			exit;
		}
	}

	/*
	if(pathStepper == "M"){
		if(object_towerLightForM2.triggered == true){
			path_start(pathM2,1,path_action_stop,false);
			pathStepper = "M2";
			exit;
		}
	}
	*/
	if(pathStepper == "H"){
		if(inst_towerI.triggered == true && inst_towerI.chargeLevel>inst_towerJ.chargeLevel){
			path_start(pathI,1,path_action_stop,false);
			pathStepper = "I";
			exit;
		}
		if(inst_towerJ.triggered == true && inst_towerJ.chargeLevel>inst_towerI.chargeLevel){
			path_start(pathJ,1,path_action_stop,false);
			pathStepper = "J";
			exit;
		}
	}
	if(pathStepper == "J"){
		if(inst_towerJ.triggered == true){
			path_start(pathJ2,1,path_action_stop,false);
			pathStepper = "J2";
			exit;
		}
	}
	if(pathStepper == "I"){
		if(inst_towerI.triggered == true || inst_towerK.triggered == true){
			path_start(pathL,1,path_action_stop,false);
			pathStepper = "L";
			exit;
		}
	}
	if(pathStepper == "J2"){
		if(inst_towerEnd.triggered == true){
			path_start(pathJ3,1,path_action_stop,false);
			pathStepper = "J3";
			exit;
		}
	}
	if(pathStepper == "K"){
		if(inst_towerEnd.triggered == true){
			path_start(pathL,1,path_action_stop,false);
			pathStepper = "L";
			exit;
		}
	}
	if(pathStepper == "L"){
		if(inst_towerEnd.triggered == true){
			path_start(pathL2,1,path_action_stop,false);
			pathStepper = "L2";
			exit;
		}
	}
	if(pathStepper == "M2"){
		if(inst_towerEnd.triggered == true){
			path_start(pathM3,1,path_action_stop,false);
			pathStepper = "M3";
			exit;
		}
	}

}


//
//       room1 STARTS HERE
//


if (room == room1)
{

	if(pathStepper == "patient40") // done
	{
		if(inst_Room1TowerA.triggered == true && inst_Room1TowerA.chargeLevel>inst_Room1TowerF.chargeLevel) //goes down path 40
		{
			path_start(path119,1,path_action_stop,false);
			pathStepper = "path40";
			exit;
		}
		
		if(inst_Room1TowerF.triggered == true && inst_Room1TowerF.chargeLevel>inst_Room1TowerA.chargeLevel) //Goes down path 41 if tower A isn't on or less charged
		{
			path_start(path120,1,path_action_stop,false);
			pathStepper = "path41";
			exit;
		}
	}
	if(pathStepper == "path40") // done
	{
		if(inst_Room1TowerB.triggered == true && inst_Room1TowerB.chargeLevel>inst_Room1TowerC.chargeLevel) // this extra stuff causes an error
		{
			path_start(path121,1,path_action_stop,false); // goes down 40A
			pathStepper = "path40A";
			exit;
		}
		if(inst_Room1TowerC.triggered == true && inst_Room1TowerC.chargeLevel>inst_Room1TowerB.chargeLevel)
		{
			path_start(path122,1,path_action_stop,false); // goes down 40B
			pathStepper = "path40B";
			exit;
		}
	}	

	if(pathStepper == "path40A")  //done
	{
		if(inst_Room1TowerD1.triggered == true && inst_Room1TowerD1.chargeLevel>inst_Room1TowerD.chargeLevel)
		{
			path_start(path123,1,path_action_stop,false); // goes down 42
			pathStepper = "path42";
			exit;
		}
		if(inst_Room1TowerD.triggered == true && inst_Room1TowerD.chargeLevel>inst_Room1TowerD1.chargeLevel)
		{
			path_start(path124,1,path_action_stop,false); // goes down 43
			pathStepper = "path43";
			exit;
		}
	}	
	
	if(pathStepper == "path40B") // done
	{
		if(inst_Room1TowerD.triggered == true && inst_Room1TowerD.chargeLevel>inst_Room1TowerE1.chargeLevel)
		{
			path_start(path125,1,path_action_stop,false); // goes down 44A
			pathStepper = "path44A";
			exit;
		}
		if(inst_Room1TowerE1.triggered == true && inst_Room1TowerE1.chargeLevel>inst_Room1TowerD.chargeLevel)
		{
			path_start(path126,1,path_action_stop,false); // goes down 44B
			pathStepper = "path44B";
			exit;
		}
	}
	
	if(pathStepper == "path41")  // done
	{
		if(inst_Room1TowerF.triggered == true)
		{
			path_start(path132,1,path_action_stop,false);
			pathStepper = "path41A";
			exit;
		}
	}
	
	if(pathStepper == "path41A")  // done
	{
		if(inst_Room1TowerG.triggered == true)
		{
			path_start(path134,1,path_action_stop,false);
			pathStepper = "path48";
			exit;
		}
	}
	
	if(pathStepper == "path48")  // !! ERROR HERE ON 213 !!
	{
		if(inst_Room1TowerE1.triggered == true && inst_Room1TowerE1.chargeLevel>inst_Room1TowerG.chargeLevel)  
		{
			path_start(path137,1,path_action_stop,false); // goes down 48A
			pathStepper = "path48A";
			exit;
		}
		if(inst_Room1TowerG.triggered == true && inst_Room1TowerG.chargeLevel>inst_Room1TowerE1.chargeLevel)
		{
			path_start(path138,1,path_action_stop,false); // goes down 48B
			pathStepper = "path48B";
			exit;
		}
	}
	
	if(pathStepper == "path48A")  // done
	{
		if(inst_Room1TowerE1.triggered == true)
		{
			path_start(path130,1,path_action_stop,false);
			pathStepper = "path47A";
			exit;
		}
	}
	
	if(pathStepper == "path48B")  // done
	{
		if(inst_Room1TowerE1.triggered == true)
		{
			path_start(path131,1,path_action_stop,false);
			pathStepper = "path47B";
			exit;
		}
	}
	
	if(pathStepper == "path44A") // done
	{
		if(inst_Room1TowerD.triggered == true && inst_Room1TowerD.chargeLevel>inst_Room1TowerE.chargeLevel)
		{
			path_start(path127,1,path_action_stop,false); // goes down 45A
			pathStepper = "path45A";
			exit;
		}
		if(inst_Room1TowerE.triggered == true && inst_Room1TowerE.chargeLevel>inst_Room1TowerD.chargeLevel)
		{
			path_start(path128,1,path_action_stop,false); // goes down 45B
			pathStepper = "path45B";
			exit;
		}
	}
	
	if(pathStepper == "path45A")  // done
	{
		if(inst_Room1TowerD.triggered == true)
		{
			path_start(path124,1,path_action_stop,false); // switches to path 43
			pathStepper = "path43";
			exit;
		}
	}
	
	if(pathStepper == "path45B")  // done
	{
		if(inst_Room1TowerE.triggered == true)
		{
			path_start(path129,1,path_action_stop,false); // switches to path 46
			pathStepper = "path46";
			exit;
		}
	}
	
	if(pathStepper == "path44B")  // done
	{
		if(inst_Room1TowerE1.triggered == true)
		{
			path_start(path130,1,path_action_stop,false); // goes to 47A 
			pathStepper = "path47A";
			exit;
		}
	}
	
	if(pathStepper == "path47A")  // done
	{
		if(inst_Room1TowerE.triggered == true)
		{
			path_start(path131,1,path_action_stop,false); // goes to 47B
			pathStepper = "path47B";
			exit;
		}
	}
	
	if(pathStepper == "path47B")  // done
	{
		if(inst_Room1TowerE.triggered == true)
		{
			path_start(path129,1,path_action_stop,false); // goes to end
			pathStepper = "path46";
			exit;
		}
	}
	
	if(pathStepper == "path46")  // done 
	{
		if(inst_Room1TowerEnd.triggered == true)
		{
			path_start(path55,1,path_action_stop,false); // goes to end
			pathStepper = "path46Z";
			exit;
		}
	}
	
	if(pathStepper == "path42")  // done
	{
		if(inst_Room1TowerEnd.triggered == true)
		{
			path_start(path54,1,path_action_stop,false); // goes to end
			pathStepper = "path42Z";
			exit;
		}
	}
	
	
	if(pathStepper == "path43")  // done
	{
		if(inst_Room1TowerEnd.triggered == true)
		{
			path_start(path56,1,path_action_stop,false); // goes to end
			pathStepper = "path43Z";
			exit;
		}
	}
	
	if(pathStepper == "path43Z")  // done
	{
		if(inst_Room1TowerEnd.triggered == true)
		{
			path_start(path57,1,path_action_stop,false); // goes to end
			pathStepper = "path43Z1";
			exit;
		}
	}
		
}


//
//       room2 STARTS HERE
//


//if (room == room2)
//{
	
//}

//Since all statements above have exits, this will run if nothing else runs
alarm_set(0,1);	


