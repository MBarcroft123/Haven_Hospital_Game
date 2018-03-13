targetX = 0;
targetY = 0;
closestObjVis = undefined;
inRange = false;
sprite_index = sprite_hunterDoc;
for (var i  = 0; i < instance_number(object_Janet); i+= 1)
{
	if (distance_to_object(instance_find(object_Janet,i))< 120){
		inRange = true;
		if (closestObjVis == undefined){
		closestObjVis = instance_find(object_Janet,i);
		} else if (distance_to_object(instance_find(object_Janet,i)) < distance_to_object(closestObjVis)){
			closestObjVis = instance_find(object_Janet,i);
		}
	}
}
if(inRange == false){
	closestObjVis = undefined;
}
if(closestObjVis != undefined){
targetX = closestObjVis.x;
targetY = closestObjVis.y;
}



if(inRange == true){
	//gets the direction of where the closest patient is
var dir = point_direction(x, y, targetX, targetY);
//calculates the speed based on distance from object, also taking into account a max speed (2 in this case)
var spd = min(2, point_distance(x, y, targetX, targetY));
}
else{
//gets the direction of where the follow node is
var dir = point_direction(x, y, instance_find(follow_node,following_node).x, instance_find(follow_node,following_node).y);
//calculates the speed based on distance from object, also taking into account a max speed (2 in this case)
var spd = min(2, point_distance(x, y, instance_find(follow_node,following_node).x, instance_find(follow_node,following_node).y));
}
//moves the creep toward the node or patient
phy_position_x += lengthdir_x(spd, dir);
phy_position_y += lengthdir_y(spd, dir);
nearby_creeps = 0;
//how to check number of nearby creeps
for (var i  = 0; i < instance_number(object0); i+= 1)
{
	if (distance_to_object(instance_find(object0,i))< 80){
		nearby_creeps += 1;
	}
}
if (nearby_creeps >= 4)
{
	hp -=1;
	instance_create_layer(x,y-100,"UI",object_damageAlert);
}
if (hp <=0)		
{
	with(self) instance_destroy();
}