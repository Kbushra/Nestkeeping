if place_meeting(x, y, objPlayerDColl)
{
	global.gameStart = false;
	instance_create_layer(x, y, "Managers", objEnd);
	objEnd.destRoom = room;
	
	with (objPlayer) { createFeathers(irandom_range(10, 15)); }
	objPlayer.visible = false;
}