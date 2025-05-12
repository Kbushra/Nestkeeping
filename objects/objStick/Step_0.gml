if place_meeting(x, y, objPlayer) && !objPlayer.busy
{
	audio_play_sound(sndPickUp, 10, false);
	objPlayer.busy = true;
	instance_destroy();
}