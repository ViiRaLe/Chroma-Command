if (instance_exists(obj_tutorial))
{
	if (keyboard_check_released(vk_right) && sprite_index == spr_tutorial2)
	{
		sprite_index = spr_tutorial3;
	}
	if (keyboard_check_released(vk_right) && sprite_index == spr_tutorial1)
	{
		sprite_index = spr_tutorial2;	
	}
	if (keyboard_check_released(vk_left) && sprite_index == spr_tutorial2)
	{
		sprite_index = spr_tutorial1;	
	}
	if (keyboard_check_released(vk_left) && sprite_index == spr_tutorial3)
	{
		sprite_index = spr_tutorial2;	
	}
	if (keyboard_check_released(vk_escape))
	{
		instance_destroy();	
	}
}