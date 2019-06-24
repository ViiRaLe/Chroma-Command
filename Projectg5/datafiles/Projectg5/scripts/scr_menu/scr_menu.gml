switch (argument0)
{
	case 0: //Sfx
	{
		if (obj_sfx.sprite_index == spr_sfx_on)
		{
			obj_sfx.sprite_index = spr_sfx_off;
			break;
		}
		if (obj_sfx.sprite_index == spr_sfx_off)
		{
			obj_sfx.sprite_index = spr_sfx_on;
			break;
		}

	}
	case 1: //Music
	{
		
		if (obj_music.sprite_index == spr_music_off)
		{
			obj_music.sprite_index = spr_music_on;
			break;
		}
		
		if (obj_music.sprite_index == spr_music_on)
		{
			obj_music.sprite_index = spr_music_off;
			break;
		}
	}
	case 2: //Hard
	{
		global.hard = true;
		room_goto(rm_game);
		break;
	}
	case 3: //Rules
	{
		instance_create_layer(room_width*0.5,room_height*0.5,"Tutorial",obj_tutorial);
		break;
	}
	case 4: //Crt
	{
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
		global.normal = true;
		room_goto(rm_game);
		break;
	}
	default: break;
}