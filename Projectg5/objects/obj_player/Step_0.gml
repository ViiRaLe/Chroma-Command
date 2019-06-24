#region Movement
if (keyboard_check(vk_right))
{
	x += move_speed;
}
if (keyboard_check(vk_left))
{
	x -= move_speed;
}
#endregion

#region Teleporting (not implemented in game)
//if (x < 0 - obj_player.sprite_width)
//{
//	x = room_width - obj_player.sprite_width/2;
//}
//if (x > room_width + obj_player.sprite_width)
//{
//	x = 0 + obj_player.sprite_width/2;
//}
#endregion

#region Change

if (power_rainbow == 0)
{
	if keyboard_check_pressed(ord("1")) || keyboard_check(ord("Q")) || keyboard_check(ord("A"))
	{
		sprite_index = spr_player_red;
	}
	if keyboard_check_pressed(ord("2")) || keyboard_check(ord("W")) || keyboard_check(ord("S"))
	{
		sprite_index = spr_player_green;
	}
	if keyboard_check_pressed(ord("3")) || keyboard_check(ord("E")) || keyboard_check(ord("D"))
	{
		sprite_index = spr_player_blue;
	}

	if (global.hard)
	{
		if keyboard_check_pressed(ord("4")) || keyboard_check(ord("R")) || keyboard_check(ord("F"))
		{	
			sprite_index = spr_player_yellow;
		}
	}
}
#endregion

#region Shoot
if (keyboard_check_pressed(vk_space) && (sprite_index != spr_player_base) && power_rainbow == 0)
{
	if(sprite_index==spr_player_red)
	{
		instance_create_layer(x, y - sprite_get_height(spr_bullet_red), "Player", obj_bullet_red);
	}
	
	if(sprite_index==spr_player_blue)
	{
		instance_create_layer(x, y - sprite_get_height(spr_bullet_blue), "Player", obj_bullet_blue);
	}	
	
	if(sprite_index==spr_player_green)
	{
		instance_create_layer(x, y - sprite_get_height(spr_bullet_green), "Player", obj_bullet_green);
	}
	
	if(sprite_index==spr_player_yellow)
	{
		instance_create_layer(x, y - sprite_get_height(spr_bullet_yellow), "Player", obj_bullet_yellow);
	}
}

if (power_rainbow == 1 && keyboard_check_pressed(vk_space))
{
	instance_create_layer(x, y - sprite_get_height(spr_bullet_red), "Player", obj_bullet_rainbow);
}
#endregion

#region Hp and Bases and Game over

//Hp check
if (player_hp == 2)
{
	image_yscale = 0.7;
}
if (player_hp == 1)
{
	image_yscale = 0.4;
}
if ((player_hp <= 0) || (total_hp <= 0))
{	
	if (obj_sound_variables.sfx_on_off == 1) audio_play_sound(snd_player_death,4,false);
	scr_game_over();
}

#endregion

#region Invincible
if(invincible == 1)
{
		if (flicker_cd >= 0) && (flicker_cd <= 15)
		{
			image_alpha = 0.2;
		}
		if (flicker_cd > 15) && (flicker_cd <= 30)
		{
			image_alpha = 1;
		} 
		if (flicker_cd >  30)
		{
			flicker_cd = 0;	
		}
	
	if (invincible_cd >= 180)
	{
		image_alpha = 1;
		invincible = 0;
		invincible_cd = 0;
	}
	
	flicker_cd += 1;
	invincible_cd += 1;
}

#endregion

#region Debugging

//////// DEBUGGING

if (keyboard_check_pressed(ord("0")))
{
	if (debug == 1)
	{
		debug = 0;
	}
	else
	{
		debug = 1;
	}
}

if (debug == 1)
{
	if keyboard_check_released(ord("I"))
	{
		obj_base_left.base_left_hp -= 1;
	}
	
	if keyboard_check_released(ord("O"))
	{
		obj_base_center.base_center_hp -= 1;
	}
	
	if keyboard_check_released(ord("P"))
	{
		obj_base_right.base_right_hp -= 1;
	}
	
	if keyboard_check_released(ord("L"))
	{
		global.player_score = 3000;
	}
	
	if (keyboard_check_pressed(ord("N")))
	{
		instance_create_layer(room_width*0.5, room_height*0.5,"Player",obj_shield);
	}
	
	if (keyboard_check_pressed(ord("M")))
	{
		instance_create_layer(room_width*0.5, room_height*0.5,"Player",obj_rainbow);
	}
	
}

if (keyboard_check_released(ord("K")))
	{
		if (obj_sound_variables.sfx_on_off == 1) audio_play_sound(snd_player_death,4,false);
		scr_game_over();
	}

#endregion

#region Power Rainbow

if (power_rainbow == 1)
{
	if (global.normal)
	{
		if (cd_rainbow >= rainbow_changing_speed)
		{
			switch sprite_index
			{
				case spr_player_red:
				{
					sprite_index = spr_player_blue;
					cd_rainbow = 0;
					break;
				}
				case spr_player_blue:
				{
					sprite_index = spr_player_green;
					cd_rainbow = 0;
					break;
				}
				case spr_player_green:
				{
					sprite_index = spr_player_red;
					cd_rainbow = 0;
					break;
				}
			}
		}
		cd_rainbow += 1;	
	}
	if (global.hard)
	{
		if (cd_rainbow >= rainbow_changing_speed)
		{
			switch sprite_index
			{
				case spr_player_red:
				{
					sprite_index = spr_player_blue;
					cd_rainbow = 0;
					break;
				}
				case spr_player_blue:
				{
					sprite_index = spr_player_green;
					cd_rainbow = 0;
					break;
				}
				case spr_player_green:
				{
					sprite_index = spr_player_yellow;
					cd_rainbow = 0;
					break;
				}
				case spr_player_yellow:
				{
					sprite_index = spr_player_red;
					cd_rainbow = 0;
					break;
				}
			}
		}
		
		cd_rainbow += 1;	
	}
	if (power_up_cd >= power_up_time*60)
	{
		power_rainbow = 0;
		power_up_cd = 0;
		cd_rainbow = 0;
	}
	power_up_cd += 1;
}
		
#endregion