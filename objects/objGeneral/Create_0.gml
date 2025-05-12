randomize();
if os_browser != browser_not_a_browser { window_set_size(1280, 960); }

global.endGame = false;
global.gameStart = false;
global.task = "Get sticks to repair nest";
global.progress = 0;
global.time = 3600;

global.currMusic = -1;
global.musPos = 0;

flag = 0;
pos = -100;

alarm[0] = 60;
alarm[1] = -1;
alarm[2] = -1;

camRelativeX = 0;

room_goto(room_next(room));

//"Get sticks to repair nest"
//"Find food for your family"
//"Find a new habitat"
//"Poop on some humans (q)"
//"Alert other birds of the migration"
//"Hatch your eggs"