if (keyboard_check_pressed(vk_up))
{
	c_pos = argument0;
	if (obj_sound_variables.sfx_on_off == 1)
	{
		audio_play_sound(snd_menu_navigate,2,false);
	}
}
if (keyboard_check_pressed(vk_left))
{
	c_pos = argument1;
	if (obj_sound_variables.sfx_on_off == 1)
	{
		audio_play_sound(snd_menu_navigate,2,false);
	}
}
if (keyboard_check_pressed(vk_right))
{
	c_pos = argument2;
	if (obj_sound_variables.sfx_on_off == 1)
	{
		audio_play_sound(snd_menu_navigate,2,false);
	}
}
if (keyboard_check_pressed(vk_down))
{
	c_pos = argument3;
	if (obj_sound_variables.sfx_on_off == 1)
	{
		audio_play_sound(snd_menu_navigate,2,false);
	}
}
