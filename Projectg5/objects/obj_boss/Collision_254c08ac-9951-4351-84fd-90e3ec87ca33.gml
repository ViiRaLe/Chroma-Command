if (obj_bases.power_shield == 0 && obj_bases.invincible_base == 0)
{
	obj_player.total_hp -= 1;
	instance_destroy(other);
}
instance_destroy();