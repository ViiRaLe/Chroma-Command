colour_cd = 0;

if(global.normal)
{
	sprite_index = choose(spr_runner_red, spr_runner_blue, spr_runner_green);
}
if(global.hard)
{
	sprite_index = choose(spr_runner_red, spr_runner_blue, spr_runner_green, spr_runner_yellow);
}



hspeed = runner_h_speed;