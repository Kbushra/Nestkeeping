y += 1;
image_angle += 5;
image_alpha -= 0.02;

if image_alpha <= 0 { instance_destroy(); }