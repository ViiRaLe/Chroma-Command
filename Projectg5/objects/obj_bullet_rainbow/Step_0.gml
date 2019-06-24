if (global.normal)
{
	if (cd_colour >= rainbow_speed)
	{
		switch sprite_index
		{
			case spr_bullet_red:
			{
				sprite_index = spr_bullet_blue;
				cd_colour = 0;
				break;
			}
			case spr_bullet_blue:
			{
				sprite_index = spr_bullet_green;
				cd_colour = 0;
				break;
			}
			case spr_bullet_green:
			{
				sprite_index = spr_bullet_red;
				cd_colour = 0;
				break;
			}
		}
	}
		
	cd_colour += 1;	
	
}

if (global.hard)
{
	if (cd_colour >= rainbow_speed)
	{
		switch sprite_index
		{
			case spr_bullet_red:
			{
				sprite_index = spr_bullet_blue;
				cd_colour = 0;
				break;
			}
			case spr_bullet_blue:
			{
				sprite_index = spr_bullet_green;
				cd_colour = 0;
				break;
			}
			case spr_bullet_green:
			{
				sprite_index = spr_bullet_yellow;
				cd_colour = 0;
				break;
			}
			case spr_bullet_yellow:
			{
				sprite_index = spr_bullet_red;
				cd_colour = 0;
				break;
			}
		}
	}
		
	cd_colour += 1;	
	
}