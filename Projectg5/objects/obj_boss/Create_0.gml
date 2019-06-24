if (global.normal)
{
	sprite_index = choose(spr_boss_red, spr_boss_blue, spr_boss_green);
}
if (global.hard)
{
	sprite_index = choose(spr_boss_red, spr_boss_blue, spr_boss_green, spr_boss_yellow);
}

vspeed += boss_speed;