if (flick_death >= 0) && (flick_death <= 5)
	{
		image_alpha = 0;
	}
	if (flick_death > 5) && (flick_death <= 10)
	{
		image_alpha = 1;
	} 
	if (flick_death > 20)
	{
		flick_death = 0;	
	}
	flick_death += 1;