if (sprite_index == spr_bullet_blue && other.sprite_index == spr_boss_blue && cooldown_change >= 10)
{
		if (global.normal)
	{
		other.sprite_index = choose(spr_boss_green,spr_boss_red)
	}
	if (global.hard) 
	{
		other.sprite_index = choose(spr_boss_green,spr_boss_red,spr_boss_yellow)
	}
	other.boss_hp -= 1;
	instance_destroy();
	cooldown_change = 0;
}

if (sprite_index == spr_bullet_red && other.sprite_index == spr_boss_red && cooldown_change >= 10)
{
	if (global.normal)
	{
		other.sprite_index = choose(spr_boss_green,spr_boss_blue)
	}
	if (global.hard) 
	{
		other.sprite_index = choose(spr_boss_green,spr_boss_blue,spr_boss_yellow)
	}
	other.boss_hp -= 1;
	instance_destroy();
	cooldown_change = 0;
}

if (sprite_index == spr_bullet_green && other.sprite_index == spr_boss_green && cooldown_change >= 10)
{
	if (global.normal)
	{
		other.sprite_index = choose(spr_boss_blue,spr_boss_red)
	}
	if (global.hard) 
	{
		other.sprite_index = choose(spr_boss_blue,spr_boss_red,spr_boss_yellow)
	}
	other.boss_hp -= 1;
	instance_destroy();
	cooldown_change = 0;
}

if (sprite_index == spr_bullet_yellow && other.sprite_index == spr_boss_yellow && cooldown_change >= 10)
{
	if (global.hard) 
	{
		other.sprite_index = choose(spr_boss_green,spr_boss_red,spr_boss_blue)
	}
	other.boss_hp -= 1;
	instance_destroy();
	cooldown_change = 0;
}

if (sprite_index == spr_bullet_red && other.sprite_index!=spr_boss_red && cooldown_change >= 10)
{
	instance_destroy();
}
if (sprite_index == spr_bullet_blue && other.sprite_index!=spr_boss_blue && cooldown_change >= 10)
{
	instance_destroy();
}
if (sprite_index == spr_bullet_green && other.sprite_index!=spr_boss_green && cooldown_change >= 10)
{
	instance_destroy();
}
if (sprite_index == spr_bullet_yellow && other.sprite_index!=spr_boss_yellow && cooldown_change >= 10)
{
	instance_destroy();
}

cooldown_change += 1;