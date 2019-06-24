if (image_alpha != 1)
{
	fading += 0.005;
	image_alpha = lerp(0,1,fading);
}