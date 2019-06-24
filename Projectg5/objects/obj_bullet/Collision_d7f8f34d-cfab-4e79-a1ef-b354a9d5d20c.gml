if ((sprite_index==spr_bullet_red)&&(other.sprite_index==spr_enemy_red))
{
	global.player_score += obj_score.normal_score;
	instance_destroy(other);
}
if ((sprite_index==spr_bullet_blue)&&(other.sprite_index==spr_enemy_blue))
{
	global.player_score += obj_score.normal_score;
	instance_destroy(other);
}
if ((sprite_index==spr_bullet_green)&&(other.sprite_index==spr_enemy_green))
{
	global.player_score += obj_score.normal_score;
	instance_destroy(other);
}
if ((sprite_index==spr_bullet_yellow)&&(other.sprite_index==spr_enemy_yellow))
{
	global.player_score += obj_score.normal_score;
	instance_destroy(other);
}
else
{
	other.vspeed += fail_increase_speed;
}

instance_destroy();