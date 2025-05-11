if place_meeting(x, y, objPlayer)
{
	if objPlayer.busy
	{
		objPlayer.busy = false;
		if global.task == "Hatch your eggs" { global.progress += 0.33; }
		if global.progress >= 0.99 { global.progress = 1; }
	}
	
	if global.progress >= 1 && !instance_exists(objDoneCut)
	{ instance_create_layer(x, y, "Managers", objDoneCut); }
}

image_index = global.progress/0.32;