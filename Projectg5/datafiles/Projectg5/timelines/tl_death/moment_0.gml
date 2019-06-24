/// @description Stop Everything
if instance_exists(obj_enemies)
{
obj_enemies.hspeed = 0;
obj_enemies.vspeed = 0;
}
if instance_exists(obj_boss) obj_boss.vspeed = 0;
if instance_exists(obj_runner)obj_runner.hspeed = 0;
with(obj_player)
{
	instance_change(obj_player_death,true);
}

