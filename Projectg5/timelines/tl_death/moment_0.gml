/// @description Stop Everything
if instance_exists(obj_enemies)
{
obj_enemies.hspeed = 0;
obj_enemies.vspeed = 0;
}

if instance_exists(obj_bullet)
{
	with (obj_bullet)
	{
		instance_destroy();
	}
}

if instance_exists(obj_bullet_rainbow)
{
	with (obj_bullet_rainbow)
	{
		instance_destroy();
	}
}

if (instance_exists(obj_bases))
{
	if (obj_bases.power_shield == 1)
	{
		obj_bases.power_shield = 0;
		obj_bases.image_alpha = 1;
	
	}
}

if instance_exists(obj_boss)obj_boss.vspeed = 0;
if instance_exists(obj_runner)
{
	obj_runner.hspeed = 0;
	obj_runner.colour_cd = -60;
}

with(obj_player)
{
	instance_change(obj_player_death,true);
}

