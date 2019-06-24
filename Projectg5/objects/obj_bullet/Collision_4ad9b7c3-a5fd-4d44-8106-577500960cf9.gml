obj_player.power_rainbow = 1;
if (obj_sound_variables.sfx_on_off == 1) audio_play_sound(snd_power_up,4,false);
instance_destroy(other);
instance_destroy();
