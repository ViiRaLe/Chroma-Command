if(keyboard_check_released(vk_anykey))
{
	audio_stop_sound(snd_game_over);
	room_goto(rm_start);
}