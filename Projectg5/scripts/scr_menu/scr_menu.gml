switch (argument0)
{
	case 0: //Sfx
	{
		if (obj_sfx.sprite_index == spr_sfx_on)
		{
			obj_sfx.sprite_index = spr_sfx_off;
			obj_sound_variables.sfx_on_off = 0;
			break;
		}
		if (obj_sfx.sprite_index == spr_sfx_off)
		{
			audio_play_sound(snd_menu_select,3,false);
			obj_sfx.sprite_index = spr_sfx_on;
			obj_sound_variables.sfx_on_off = 1;
			break;
		}
		

	}
	case 1: //Music
	{
		if (obj_sound_variables.sfx_on_off==1) audio_play_sound(snd_menu_select,3,false);
		if (obj_music.sprite_index == spr_music_off)
		{
			obj_music.sprite_index = spr_music_on;
			obj_sound_variables.music_on_off = 1;
			audio_play_sound(snd_main_menu,1,true);
			break;
		}
		if (obj_music.sprite_index == spr_music_on)
		{
			obj_music.sprite_index = spr_music_off;
			obj_sound_variables.music_on_off = 0;
			audio_stop_sound(snd_main_menu);
			break;
		}
	}
	case 2: //Hard
	{
		if (obj_sound_variables.sfx_on_off==1) audio_play_sound(snd_menu_select,3,false);
		global.hard = true;
		room_goto(rm_game);
		break;
	}
	case 3: //Rules
	{
		if (obj_sound_variables.sfx_on_off==1) audio_play_sound(snd_menu_select,3,false);
		instance_create_layer(room_width*0.5,room_height*0.5,"Tutorial",obj_tutorial);
		break;
	}
	case 4: //Crt
	{
		if (obj_sound_variables.sfx_on_off==1) audio_play_sound(snd_menu_select,3,false);
		if (global.crt == false)
		{
			obj_crt.sprite_index = spr_crt_on;
			global.crt = true;
			break;
		} 
		
		if (global.crt == true)
		{
			obj_crt.sprite_index = spr_crt_off;
			global.crt = false;
			break;
		}
		
	}
	case 5:
	{
		if (obj_sound_variables.sfx_on_off==1) audio_play_sound(snd_menu_select,3,false);
		global.normal = true;
		room_goto(rm_game);
		break;
	}
	default: break;
}