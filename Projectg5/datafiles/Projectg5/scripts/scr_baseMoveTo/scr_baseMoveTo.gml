//argument0 è l'oggetto
//argument1 è la posizione

if (argument0.x > argument1)
{
		with(argument0)
		{
			move_towards_point(argument1, y, 4);
		}
}


if (argument0.x < argument1)
{
		with(argument0)
		{
			move_towards_point(argument1, y, 4);
		}
}

if (argument0.x >= argument1-4 && argument0.x <= argument1+4)
{
	with(argument0)
	{
		speed = 0;
	}
}
