with(other)
{
	if(invincible == 0)
	{
	player_hp -= 1;
	invincible = 1;
	flicker_cd = 0;
	}
}

instance_destroy();
