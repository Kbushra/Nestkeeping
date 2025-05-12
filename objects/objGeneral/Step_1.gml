#region Music
if os_browser == browser_not_a_browser { audio_master_gain(0.8); }
else { audio_master_gain(0.3); }

if global.currMusic == -1
{
	if global.task == "Migrate"
	{
		global.time = 0;
		global.currMusic = audio_play_sound(musMigration, 10, true);
		audio_pause_sound(global.currMusic);
		global.musPos = 0;
	}
	else if global.task == "Find a new habitat"
	{
		global.currMusic = audio_play_sound(sndFire, 10, true);
	}
	else if instance_exists(objNightFilter) { global.currMusic = audio_play_sound(musNight, 10, true); }
	else { global.currMusic = audio_play_sound(musDay, 10, true); }

	audio_sound_set_track_position(global.currMusic, global.musPos);
}

global.musPos = audio_sound_get_track_position(global.currMusic);
#endregion

#region Controls
global.spaceP = keyboard_check_pressed(vk_space);
global.spaceH = keyboard_check(vk_space);
global.right = keyboard_check(vk_right) || keyboard_check(ord("D"));
global.left = keyboard_check(vk_left) || keyboard_check(ord("A"));
global.poop = keyboard_check_pressed(ord("Q")) && global.task == "Poop on some humans (q)";

if keyboard_check_pressed(vk_f4) { window_set_fullscreen(!window_get_fullscreen()); }

if global.spaceP && objPlayer.sprite_index == sprBirdS && pos > 18
{
	objPlayer.sprite_index = sprBirdI;
	
	global.gameStart = true;
	alarm[1] = 30;
	flag = 2;
	
	if audio_is_paused(global.currMusic) { audio_resume_sound(global.currMusic); }
}
#endregion

if global.gameStart && global.time > 0 { global.time--; }
if global.time <= 0 && global.task != "Migrate" && !instance_exists(objRavenCut)
{ instance_create_layer(x, y, "Managers", objRavenCut); }