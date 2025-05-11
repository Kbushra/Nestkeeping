image_index = (instance_exists(objNightFilter) && objNightFilter.image_alpha >= 0.3) + 0.1;
if place_meeting(x, y, objPlayer) && global.task == "Find a new habitat" { global.progress = 1; }