global.spaceP = keyboard_check_pressed(vk_space);
global.spaceH = keyboard_check(vk_space);
global.right = keyboard_check(vk_right) || keyboard_check(ord("D"));
global.left = keyboard_check(vk_left) || keyboard_check(ord("A"));

if keyboard_check_pressed(vk_f4) { window_set_fullscreen(!window_get_fullscreen()); }

if global.spaceP && objPlayer.sprite_index == sprBirdS && pos > 18
{
	objPlayer.sprite_index = sprBirdI;
	
	global.gameStart = true;
	alarm[1] = 30;
	flag = 2;
}

if global.gameStart { global.time--; }