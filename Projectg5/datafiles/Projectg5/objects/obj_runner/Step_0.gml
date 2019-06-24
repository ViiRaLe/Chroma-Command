//Change Colour

if (colour_cd >= time_change*60)
{
	switch sprite_index
	{
		case spr_runner_red:
		{
			if (global.normal) sprite_index = choose(spr_runner_blue, spr_runner_green);
			if (global.hard) sprite_index = choose(spr_runner_blue, spr_runner_green, spr_runner_yellow);
			colour_cd = 0;
			break;
		}
		case spr_runner_blue:
		{
			if (global.normal) sprite_index = choose(spr_runner_red, spr_runner_green);
			if (global.hard) sprite_index = choose(spr_runner_red, spr_runner_green, spr_runner_yellow);
			colour_cd = 0;
			break;
		}
		case spr_runner_green:
		{
			if (global.normal) sprite_index = choose(spr_runner_blue, spr_runner_red);
			if (global.hard) sprite_index = choose(spr_runner_blue, spr_runner_red, spr_runner_yellow);
			colour_cd = 0;
			break;
		}
		case spr_runner_yellow:
		{
			sprite_index = choose(spr_runner_blue, spr_runner_green, spr_runner_red);
			colour_cd = 0;
			break;
		}
	}
}
colour_cd += 1;
