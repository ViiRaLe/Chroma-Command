if (global.normal)
{
	if (cooldown <= 0)
	{
		instance_create_layer(room_width*0.5, y, "Enemies",choose(obj_enemy_red,obj_enemy_blue,obj_enemy_green));
		instance_create_layer(room_width*0.25, y, "Enemies",choose(obj_enemy_red,obj_enemy_blue,obj_enemy_green));
		instance_create_layer(room_width*0.75, y, "Enemies",choose(obj_enemy_red,obj_enemy_blue,obj_enemy_green));
		cooldown = spawn_time_normal*60;
	}

	cooldown -= 1;
	
}

if (global.hard)
{
	if (cooldown <= 0)
	{
		instance_create_layer(room_width*0.2, y, "Enemies",choose(obj_enemy_red,obj_enemy_blue,obj_enemy_green,obj_enemy_yellow));
		instance_create_layer(room_width*0.4, y, "Enemies",choose(obj_enemy_red,obj_enemy_blue,obj_enemy_green,obj_enemy_yellow));
		instance_create_layer(room_width*0.6, y, "Enemies",choose(obj_enemy_red,obj_enemy_blue,obj_enemy_green,obj_enemy_yellow));
		instance_create_layer(room_width*0.8, y, "Enemies",choose(obj_enemy_red,obj_enemy_blue,obj_enemy_green,obj_enemy_yellow));
		cooldown = spawn_time_hard*60;
	}

	cooldown -= 1;
	
}