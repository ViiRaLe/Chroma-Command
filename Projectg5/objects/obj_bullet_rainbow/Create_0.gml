vspeed = -bullet_speed;

if (obj_sound_variables.sfx_on_off == 1) 
{
	audio_sound_pitch(snd_rainbow_shot,random_range(0.8,1.2));
	audio_play_sound(snd_rainbow_shot,2,false);
}