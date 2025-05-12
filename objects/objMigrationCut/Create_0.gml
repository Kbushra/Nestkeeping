filter = instance_create_layer(x, y, "BG", objNightFilter);
filter.image_alpha = 0;
filter2 = instance_create_layer(x, y, "Managers", objNightFilter);
filter2.image_alpha = 0;

with (objStars) { image_alpha = 0; }

alpha_spd = 0.0008;

alarm[0] = 1000;
alarm[1] = 1500;