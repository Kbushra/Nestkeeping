if place_meeting(x, y, objPlayer) && !objPlayer.busy
{
	objPlayer.busy = true;
	instance_destroy();
}