#region Shield

if (power_shield == 1)
{
	if (bases_flicker_cd >= 0) && (bases_flicker_cd <= 10)
	{
		image_alpha = 0.1;
	}
	if (bases_flicker_cd > 10) && (bases_flicker_cd <= 20)
	{
		image_alpha = 1;
	} 
	
	if (bases_flicker_cd > 20)
	{
		bases_flicker_cd = 0;	
	}
	
	if (shield_cd >= power_shield_duration*60)
	{
		image_alpha = 1;
		power_shield = 0;
		shield_cd = 0;
	}
		
	bases_flicker_cd += 1;
	shield_cd += 1;
}

#endregion

#region Invincible

if (invincible_base == 1)
{
	if (bases_flicker_cd >= 0) && (bases_flicker_cd <= 10)
	{
		image_alpha = 0.1;
	}
	if (bases_flicker_cd > 10) && (bases_flicker_cd <= 20)
	{
		image_alpha = 1;
	} 
	
	if (bases_flicker_cd > 20)
	{
		bases_flicker_cd = 0;	
	}
	
	if (invincible_base_cd >= 180)
	{
		image_alpha = 1;
		invincible_base = 0;
		invincible_base_cd = 0;
	}
		
	bases_flicker_cd += 1;
	invincible_base_cd += 1;
}

#endregion