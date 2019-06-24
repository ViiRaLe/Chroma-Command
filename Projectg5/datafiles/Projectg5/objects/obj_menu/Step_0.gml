if (!instance_exists(obj_tutorial))
{
	
#region Menu movement
	switch c_pos
	{
		case 0:
		{
			if (keyboard_check_pressed(vk_up)) c_pos = 1;
			if (keyboard_check_pressed(vk_left)) c_pos = 4;
			if (keyboard_check_pressed(vk_right)) c_pos = 5;
			if (keyboard_check_pressed(vk_down)) c_pos = 1;
			break;
		}
		case 1:
		{
			if (keyboard_check_pressed(vk_up)) c_pos = 0;
			if (keyboard_check_pressed(vk_left)) c_pos = 3;
			if (keyboard_check_pressed(vk_right)) c_pos = 2;
			if (keyboard_check_pressed(vk_down)) c_pos = 0;
			break;
		}
		case 2: //HARD
		{
			if (keyboard_check_pressed(vk_up)) c_pos = 5;
			if (keyboard_check_pressed(vk_left)) c_pos = 1;
			if (keyboard_check_pressed(vk_right)) c_pos = 3;
			if (keyboard_check_pressed(vk_down)) c_pos = 5;
			break;
		}
		case 3:
		{
			if (keyboard_check_pressed(vk_up)) c_pos = 4;
			if (keyboard_check_pressed(vk_left)) c_pos = 2;
			if (keyboard_check_pressed(vk_right)) c_pos = 1;
			if (keyboard_check_pressed(vk_down)) c_pos = 4;
			break;
		}
		case 4:
		{
			if (keyboard_check_pressed(vk_up)) c_pos = 3;
			if (keyboard_check_pressed(vk_left)) c_pos = 5;
			if (keyboard_check_pressed(vk_right)) c_pos = 0;
			if (keyboard_check_pressed(vk_down)) c_pos = 3;
			break;
		}
		case 5: //NORMAL
		{
			if (keyboard_check_pressed(vk_up)) c_pos = 2;
			if (keyboard_check_pressed(vk_left)) c_pos = 0;
			if (keyboard_check_pressed(vk_right)) c_pos = 4;
			if (keyboard_check_pressed(vk_down)) c_pos = 2;
			break;
		}
	}

#endregion

#region Flickering

	if (c_pos = 0)
	{
		if (flicker_cd >= 0) && (flicker_cd <= flick_min)
		{
			obj_sfx.image_alpha = 0.5;
		}
		if (flicker_cd > flick_min) && (flicker_cd <= flick_max)
		{
			obj_sfx.image_alpha = 1;
		} 
		if (flicker_cd >  flick_max)
		{
			flicker_cd = 0;	
		}
		
		flicker_cd += 1;
	}

	if (c_pos != 0)
	{
		obj_sfx.image_alpha = 1;
	}
	
	if (c_pos = 1)
	{
		if (flicker_cd >= 0) && (flicker_cd <= flick_min)
		{
			obj_music.image_alpha = 0.5;
		}
		if (flicker_cd > flick_min) && (flicker_cd <= flick_max)
		{
			obj_music.image_alpha = 1;
		} 
		if (flicker_cd >  flick_max)
		{
			flicker_cd = 0;	
		}
		
		flicker_cd += 1;
	}
	
	if (c_pos != 1)
	{
		obj_music.image_alpha = 1;
	}
	
	if (c_pos = 2)
	{
		if (flicker_cd >= 0) && (flicker_cd <= flick_min)
		{
			obj_hard.image_alpha = 0.5;
		}
		if (flicker_cd > flick_min) && (flicker_cd <= flick_max)
		{
			obj_hard.image_alpha = 1;
		} 
		if (flicker_cd >  flick_max)
		{
			flicker_cd = 0;	
		}
		
		flicker_cd += 1;
		
		obj_title.sprite_index = spr_title_hard;
		
	}
	
	if (c_pos != 2)
	{
		obj_hard.image_alpha = 1;
	}
	
	if (c_pos = 3)
	{
		if (flicker_cd >= 0) && (flicker_cd <= flick_min)
		{
			obj_rules.image_alpha = 0.5;
		}
		if (flicker_cd > flick_min) && (flicker_cd <= flick_max)
		{
			obj_rules.image_alpha = 1;
		} 
		if (flicker_cd >  flick_max)
		{
			flicker_cd = 0;	
		}
		
		flicker_cd += 1;
	}
	
	if (c_pos != 3)
	{
		obj_rules.image_alpha = 1;
	}	
	
	if (c_pos = 4)
	{
		if (flicker_cd >= 0) && (flicker_cd <= flick_min)
		{
			obj_crt.image_alpha = 0.5;
		}
		if (flicker_cd > flick_min) && (flicker_cd <= flick_max)
		{
			obj_crt.image_alpha = 1;
		} 
		if (flicker_cd >  flick_max)
		{
			flicker_cd = 0;	
		}
		
		flicker_cd += 1;
	}
	
	if (c_pos != 4)
	{
		obj_crt.image_alpha = 1;
	}
	
	if (c_pos = 5)
	{
		if (flicker_cd >= 0) && (flicker_cd <= flick_min)
		{
			obj_normal.image_alpha = 0.5;
		}
		if (flicker_cd > flick_min) && (flicker_cd <= flick_max)
		{
			obj_normal.image_alpha = 1;
		} 
		if (flicker_cd >  flick_max)
		{
			flicker_cd = 0;	
		}
		
		flicker_cd += 1;
		
		obj_title.sprite_index = spr_title_normal;
		
	}
	
	if (c_pos != 5)
	{
		obj_normal.image_alpha = 1;
	}

#endregion

	var press_space = keyboard_check_released(vk_space)
	
	if (press_space)
	{
		scr_menu(c_pos);
		press_space = false;
	}
}