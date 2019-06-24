image_angle =180;

if (base_left_hp == 2)
{
	image_yscale = 0.7;
}
if (base_left_hp == 1)
{
	image_yscale = 0.4;
}
if (base_left_hp == 0)
{
	obj_player.total_hp -= 1;
	instance_destroy();
}
