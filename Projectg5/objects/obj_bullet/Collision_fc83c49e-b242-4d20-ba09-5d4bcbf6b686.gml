if ((sprite_index==spr_bullet_red)&&(other.sprite_index==spr_runner_red))
{
	if (obj_spawn_special_enemies.runner_case == 0)
	{
		instance_create_layer(other.x-obj_spawn_special_enemies.runner_width*2,other.y,"PowerUp",choose(obj_rainbow, obj_shield))
	}
	
	if(obj_spawn_special_enemies.runner_case == 1)
	{
		instance_create_layer(other.x-obj_spawn_special_enemies.runner_width,other.y,"PowerUp",choose(obj_rainbow, obj_shield))
	}
	
	instance_destroy(other);
}
if ((sprite_index==spr_bullet_blue)&&(other.sprite_index==spr_runner_blue))
{
	if (obj_spawn_special_enemies.runner_case == 0)
	{
		instance_create_layer(other.x-obj_spawn_special_enemies.runner_width*2,other.y,"PowerUp",choose(obj_rainbow, obj_shield))
	}
	
	if(obj_spawn_special_enemies.runner_case == 1)
	{
		instance_create_layer(other.x-obj_spawn_special_enemies.runner_width,other.y,"PowerUp",choose(obj_rainbow, obj_shield))
	}
	
	instance_destroy(other);
}
if ((sprite_index==spr_bullet_green)&&(other.sprite_index==spr_runner_green))
{
	if (obj_spawn_special_enemies.runner_case == 0)
	{
		instance_create_layer(other.x-obj_spawn_special_enemies.runner_width*2,other.y,"PowerUp",choose(obj_rainbow, obj_shield))
	}
	
	if(obj_spawn_special_enemies.runner_case == 1)
	{
		instance_create_layer(other.x-obj_spawn_special_enemies.runner_width,other.y,"PowerUp",choose(obj_rainbow, obj_shield))
	}
	
	instance_destroy(other);
}
if ((sprite_index==spr_bullet_yellow)&&(other.sprite_index==spr_runner_yellow))
{
	if (obj_spawn_special_enemies.runner_case == 0)
	{
		instance_create_layer(other.x-obj_spawn_special_enemies.runner_width*2,other.y,"PowerUp",choose(obj_rainbow, obj_shield))
	}
	
	if(obj_spawn_special_enemies.runner_case == 1)
	{
		instance_create_layer(other.x-obj_spawn_special_enemies.runner_width,other.y,"PowerUp",choose(obj_rainbow, obj_shield))
	}
	
	instance_destroy(other);
}
else
{
	if(other.hspeed >= 0)
	{
		other.hspeed += fail_increase_speed_runner	
	}
	if(other.hspeed < 0)
	{
		other.hspeed -= fail_increase_speed_runner	
	}
}

instance_destroy();