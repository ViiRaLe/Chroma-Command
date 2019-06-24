if (global.normal)
{
	
	if (flicker_qwer == 0)
	{
	
		if (flicker_cd_qwer >= 0) && (flicker_cd_qwer <= 15)
		{
			image_alpha = 0.05;
		}
	
		if (flicker_cd_qwer > 15) && (flicker_cd_qwer <= 30)
		{
			image_alpha = 1;
		} 
	
		if (flicker_cd_qwer >  30)
		{
			flicker_cd_qwer = 0;	
		}
	
		if (timer_cd_qwer >= 240)
		{
			image_alpha = 0.2;
			flicker_qwer = 1;
		}
	
		flicker_cd_qwer += 1;
		timer_cd_qwer += 1;
	}
}
else
{
		
	if (flicker_qwer == 0)
	{
	
		if (flicker_cd_qwer >= 0) && (flicker_cd_qwer <= 15)
		{
			image_alpha = 0.05;
		}
	
		if (flicker_cd_qwer > 15) && (flicker_cd_qwer <= 30)
		{
			image_alpha = 1;
		} 
	
		if (flicker_cd_qwer >  30)
		{
			flicker_cd_qwer = 0;	
		}
	
		if (timer_cd_qwer >= 240)
		{
			image_alpha = 0.2;
			flicker_qwer = 1;
		}
	
	flicker_cd_qwer += 1;
	timer_cd_qwer += 1;
	}
}