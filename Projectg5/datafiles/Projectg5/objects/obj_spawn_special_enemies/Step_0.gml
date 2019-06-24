#region Spawn Boss
if (global.player_score%5000 == 0 && global.player_score != 0 && !instance_exists(obj_boss))
{	
//Two bases alive
	if (instance_exists(obj_base_left) && instance_exists(obj_base_center) && !instance_exists(obj_base_right))
		{
			instance_create_layer(choose(obj_base_left.x,obj_base_center.x), y, "Enemies",obj_boss); //SX and CENTER
		}
	if (instance_exists(obj_base_left) && !instance_exists(obj_base_center) && instance_exists(obj_base_right))
		{
			instance_create_layer(choose(obj_base_left.x,obj_base_right.x), y, "Enemies",obj_boss); //SX and RIGHT
		}
	if (!instance_exists(obj_base_left) && instance_exists(obj_base_center) && instance_exists(obj_base_right))
		{
			instance_create_layer(choose(obj_base_center.x,obj_base_right.x), y, "Enemies",obj_boss); //CENTER and RIGHT
		}
//One base alive
	if (instance_exists(obj_base_left) && !instance_exists(obj_base_center) && !instance_exists(obj_base_right))
		{
			instance_create_layer(obj_base_left.x, y, "Enemies",obj_boss); //SOLO LEFT
		}
	if (!instance_exists(obj_base_left) && instance_exists(obj_base_center) && !instance_exists(obj_base_right))
		{
			instance_create_layer(obj_base_center.x, y, "Enemies",obj_boss); //SOLO CENTER
		}
	if (!instance_exists(obj_base_left) && !instance_exists(obj_base_center) && instance_exists(obj_base_right))
		{
			instance_create_layer(obj_base_right.x, y, "Enemies",obj_boss); //SOLO RIGHT
		}
//All base alive
	if (instance_exists(obj_base_left) && instance_exists(obj_base_center) && instance_exists(obj_base_right))
		{
			instance_create_layer(choose(obj_base_left.x,obj_base_center.x,obj_base_right.x), y, "Enemies",obj_boss); //ALL
		}
}
#endregion

#region Spawn Runner

if (keyboard_check_pressed(ord("J")) || cd_spawn_runner >= 3600)
{
	runner_case = choose(0,1);
	switch runner_case
	{
		case 0:
		{
			instance_create_layer(0,room_height*0.5, "Runner", obj_runner);
			obj_runner.hspeed = obj_runner.runner_h_speed;
			cd_spawn_runner = 0;
			break;
		}
		case 1:
		{
			instance_create_layer(room_width,room_height*0.5, "Runner", obj_runner);
			obj_runner.hspeed = -obj_runner.runner_h_speed;
			cd_spawn_runner = 0;
			break;
		}
	}
}
cd_spawn_runner += 1;

#endregion