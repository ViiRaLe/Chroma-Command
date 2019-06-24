if ((sprite_index==spr_bullet_red)&&(other.sprite_index==spr_runner_red))
{
	instance_create_layer(other.x,other.y,"PowerUp",choose(obj_rainbow, obj_shield))
	instance_destroy(other);
}
if ((sprite_index==spr_bullet_blue)&&(other.sprite_index==spr_runner_blue))
{
	instance_create_layer(other.x,other.y,"PowerUp",choose(obj_rainbow, obj_shield))
	instance_destroy(other);
}
if ((sprite_index==spr_bullet_green)&&(other.sprite_index==spr_runner_green))
{
	instance_create_layer(other.x,other.y,"PowerUp",choose(obj_rainbow, obj_shield))
	instance_destroy(other);
}
if ((sprite_index==spr_bullet_yellow)&&(other.sprite_index==spr_runner_yellow))
{
	instance_create_layer(other.x,other.y,"PowerUp",choose(obj_rainbow, obj_shield))
	instance_destroy(other);
}
else
{
	if(other.hspeed >= 0)
	{
		other.hspeed += fail_increase_speed_runner	
	}
	if(other.hspeed < 0)
	{
		other.hspeed -= fail_increase_speed_runner	
	}
}

instance_destroy();