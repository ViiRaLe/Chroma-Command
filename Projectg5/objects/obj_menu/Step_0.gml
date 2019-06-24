if (keyboard_check_pressed(ord("H"))) highscore_clear();

if (!instance_exists(obj_tutorial))
{

#region Menu movement
	switch c_pos
	{
		case 0:
		{
			scr_menu_selection(1,4,5,1);
			break;
		}
		case 1:
		{
			scr_menu_selection(0,3,2,0);
			break;
		}
		case 2: //HARD
		{
			scr_menu_selection(5,1,3,5);
			break;
		}
		case 3:
		{
			scr_menu_selection(4,2,1,4);
			break;
		}
		case 4:
		{
			scr_menu_selection(3,5,0,3);
			break;
		}
		case 5: //NORMAL
		{
			scr_menu_selection(2,0,4,2);
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

	var press_space = keyboard_check_released(vk_space);
	var press_enter = keyboard_check_released(vk_enter)
	
	if (press_space || press_enter)
	{
		scr_menu(c_pos);
		press_space = false;
	}
}

