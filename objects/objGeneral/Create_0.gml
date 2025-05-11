randomize();
if os_browser != browser_not_a_browser { window_set_size(1280, 960); }
audio_sound_loop_start(musDay, 16);
audio_sound_loop_end(musDay, 32);

global.gameStart = false;
global.task = "Get sticks to repair nest";
global.progress = 0;
global.time = 3600;

global.currMusic = musDay;
global.musPos = 0;

flag = 0;
pos = -100;
alarm[0] = 60;

camRelativeX = 0;

//"Get sticks to repair nest"
//"Find food for your family"
//"Find a new habitat"
//"Poop on some humans (Q)"
//"Alert other birds of the migration"
//"Hatch your eggs"