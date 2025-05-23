if !global.gameStart { exit; }

global.progress = round(objPlayer.x * 100 / room_width) / 100;

if objPlayer.x >= 9625
{
	global.gameStart = false;
	instance_create_layer(x, y, "Managers", objEnd);
	objEnd.destRoom = rmEggs;
	exit;
}

if !instance_exists(objOtherBirdF)
{
	audio_play_sound(sndCaw, 10, false);
	
	for (var i = 0; i < 10; i++)
	{ instance_create_layer(irandom_range(-24, -12), i*24 + 20, "Important", objOtherBirdF); }
	
	for (var i = 0; i < 10; i++)
	{ instance_create_layer(irandom_range(-204, -180), i*24 + 20, "Important", objRavensF); }
	
	instance_destroy(objNestBack);
	instance_destroy(objNestFront);
	instance_create_layer(x, y, "Important", objNestFull);
}

if filter.image_alpha < 0.7 { filter.image_alpha += alpha_spd * 0.5; }
if filter.image_alpha < 0.5 { filter2.image_alpha += alpha_spd * 0.3; }
with (objClouds) { image_alpha -= other.alpha_spd; }
with (objStars) { image_alpha += other.alpha_spd; }