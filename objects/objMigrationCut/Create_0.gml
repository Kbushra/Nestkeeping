filter = instance_create_layer(x, y, "Managers", objNightFilter);
filter.image_alpha = 0;

with (objStars) { image_alpha = 0; }

alpha_spd = 0.0004;

alarm[0] = 1000;
alarm[1] = 1500;