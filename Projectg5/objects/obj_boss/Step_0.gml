if (boss_hp == 0)
{
	global.player_score += obj_score.boss_score;
	instance_destroy();
}