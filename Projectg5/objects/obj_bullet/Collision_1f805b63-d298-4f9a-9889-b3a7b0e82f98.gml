if (instance_exists(obj_base_left) || instance_exists(obj_base_center) || instance_exists(obj_base_right)) obj_bases.power_shield = 1;
if (obj_sound_variables.sfx_on_off == 1) audio_play_sound(snd_power_up,4,false);
instance_destroy(other);
instance_destroy();
