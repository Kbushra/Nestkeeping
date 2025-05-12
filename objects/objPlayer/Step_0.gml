if sprite_index == sprBirdI || sprite_index == sprBirdF
{
	if image_index <= 1 { createFeathers(irandom_range(1, 3)); }
	else { image_speed = 0; }
}
else { image_speed = 1; }

if !global.gameStart { exit; }

if global.spaceP
{
	image_index = 0;
	image_speed = 1;
	yMovement = -5;
	createFeathers(irandom_range(3, 6));
	audio_play_sound(sndFlap, 10, false);
}

if !grounded
{
	if yMovement >= 0 && global.spaceH
	{
		if !audio_is_playing(sndGlide) { audio_play_sound(sndGlide, 10, false); }
		sprite_index = sprBirdG;
		yMovement = lerp(yMovement, 0.7, 0.1);
		grav = 0;
		spd = 4;
	}
	else
	{
		sprite_index = sprBirdF;
		grav = 0.3;
		spd = 2.5;
	}
	
	yMovement += grav;
	xMovement = lerp(xMovement, (global.right - global.left)*spd, 0.2);
	
	if !place_free(x + xMovement, y + yMovement)
	{
		var iterations = 0;
		while place_free(x + sign(xMovement)*2, y + sign(yMovement)*2)
		{
			x += sign(xMovement);
			y += sign(yMovement);
			iterations++;
			if iterations > abs(xMovement) || iterations > abs(yMovement) { break; }
		}
		
		if !place_free(x + xMovement, y) { xMovement = 0; }
		if !place_free(x, y + yMovement) { yMovement = 0; }
	}
}
else { sprite_index = sprBirdI; }

yMovement = clamp(yMovement, -5, 7.5);
x += xMovement;
y += yMovement;

if place_free(x, y + 5) { grounded = false; }
else if !place_free(x, y + 2) && !grounded
{
	audio_play_sound(sndGrass, 10, false);
	grounded = true;
	xMovement = 0;
	yMovement = 0;
}

if xMovement > 0 { image_xscale = -1; }
if xMovement < 0 { image_xscale = 1; }