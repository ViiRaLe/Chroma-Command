// Inherit the parent event
event_inherited();

image_angle =180;

if (base_right_hp == 2)
{
	image_yscale = 0.7;
}
if (base_right_hp == 1)
{
	image_yscale = 0.4;
}
if (base_right_hp <= 0)
{
	if (obj_sound_variables.sfx_on_off == 1)
	{
		audio_play_sound(snd_explosion,5,false);
	}
	obj_bases.invincible_base = 1;
	obj_player.total_hp -= 1;
	instance_destroy();
}