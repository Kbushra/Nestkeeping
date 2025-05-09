if sprite_index == sprBirdI || sprite_index == sprBirdF
{
	if image_index < 1 { CreateFeathers(irandom_range(1, 3)); }
	else { image_speed = 0; }
}
else { image_speed = 1; }

if !global.gameStart { exit; }

if global.spaceP
{
	image_index = 0;
	image_speed = 1;
	yMovement = -5;
	CreateFeathers(irandom_range(3, 6));
}

if !grounded
{
	if yMovement >= 0 && global.spaceH
	{
		sprite_index = sprBirdG;
		yMovement = lerp(yMovement, 1, 0.1);
		grav = 0;
		spd = 1.5;
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
		while place_free(x + sign(xMovement)*2, y + sign(yMovement)*2)
		{
			x += sign(xMovement);
			y += sign(yMovement);
			if sign(xMovement) == 0 && sign(yMovement) == 0 { break; }
		}
		
		if !place_free(x + xMovement, y) { xMovement = 0; }
		if !place_free(x, y + yMovement) { yMovement = 0; }
	}
}
else { sprite_index = sprBirdI; }

x += xMovement;
y += yMovement;

if place_free(x, y + 2) { grounded = false; }
else if !grounded
{
	grounded = true;
	xMovement = 0;
	yMovement = 0;
}

if xMovement > 0 { image_xscale = -1; }
if xMovement < 0 { image_xscale = 1; }