global.time = 999 * 60;

if place_meeting(x, y, objPlayer)
{
	if objPlayer.busy
	{
		audio_play_sound(sndPut, 10, false);
		objPlayer.busy = false;
		if global.task == "Hatch your eggs" { global.progress += 0.33; }
		if global.progress >= 0.99 { global.progress = 1; }
	}
	
	if global.progress >= 1 && !instance_exists(objEndGameCut)
	{ instance_create_layer(x, y, "Managers", objEndGameCut); }
}

for (var i = 1; i < 4; i++)
{
	if instance_number(objEggDeco) == i-1 && global.progress >= 0.32*i
	{
		if i == 1 { instance_create_layer(x + 4, y + 3, "Land", objEggDeco); }
		if i == 2 { instance_create_layer(x + 10, y + 6, "Land", objEggDeco); }
		if i == 3 { instance_create_layer(x + 16, y + 3, "Land", objEggDeco); }
	}
}
//43 106 163