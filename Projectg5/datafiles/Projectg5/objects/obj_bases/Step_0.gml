if (instance_exists(obj_base_right) && (!instance_exists(obj_base_left) && !instance_exists(obj_base_center)))
{
	obj_base_right.image_xscale = 3;
	scr_baseMoveTo(obj_base_right,pos_single_base);
}
if (instance_exists(obj_base_left) && (!instance_exists(obj_base_center) && !instance_exists(obj_base_right)))
{
	obj_base_left.image_xscale = 3;
	scr_baseMoveTo(obj_base_left,pos_single_base);
}
if (instance_exists(obj_base_center) && (!instance_exists(obj_base_left) && !instance_exists(obj_base_right)))
{
	obj_base_center.image_xscale = 3;
	scr_baseMoveTo(obj_base_center,pos_single_base);
}
if (!instance_exists(obj_base_left) && instance_exists(obj_base_center) && instance_exists(obj_base_right))
{
	obj_base_center.image_xscale = 1.5;
	scr_baseMoveTo(obj_base_center,pos_double_base_left);
	obj_base_right.image_xscale = 1.5;
	scr_baseMoveTo(obj_base_right,pos_double_base_right);
}
if (instance_exists(obj_base_left) && !instance_exists(obj_base_center) && instance_exists(obj_base_right))
{
	obj_base_left.image_xscale = 1.5;
	scr_baseMoveTo(obj_base_left,pos_double_base_left);
	obj_base_right.image_xscale = 1.5;
	scr_baseMoveTo(obj_base_right,pos_double_base_right);
}
if (instance_exists(obj_base_left) && instance_exists(obj_base_center) && !instance_exists(obj_base_right))
{
	obj_base_left.image_xscale = 1.5;
	scr_baseMoveTo(obj_base_left,pos_double_base_left);
	obj_base_center.image_xscale = 1.5;
	scr_baseMoveTo(obj_base_center,pos_double_base_right);
}