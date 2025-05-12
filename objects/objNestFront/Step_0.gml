if place_meeting(x, y, objPlayer)
{
	if objPlayer.busy
	{
		audio_play_sound(sndPut, 10, false);
		objPlayer.busy = false;
		if global.task == "Get sticks to repair nest" { global.progress += 0.25; }
	}
	
	if global.progress >= 1 && !instance_exists(objDoneCut)
	{ instance_create_layer(x, y, "Managers", objDoneCut); }
}