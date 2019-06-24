with(obj_player)
{
	switch player_hp
	{
		case 2:
		{
			player_hp = 3;
			break;
		}
		case 1:
		{
			player_hp = 2;
			break;
		}
	}
}
instance_destroy(other);
instance_destroy();
