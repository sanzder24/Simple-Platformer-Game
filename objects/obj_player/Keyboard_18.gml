/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("R")) && keyboard_check(vk_alt))
{
	game_restart();
}
	
if(keyboard_check_pressed(ord("G")) && keyboard_check(vk_alt))
{
	
	game_restart();
}
if(keyboard_check_pressed(ord("L")) && keyboard_check(vk_alt))
{

	lives = lives + 5;
}
if(keyboard_check_pressed(ord("N")) && keyboard_check(vk_alt))
{
	room_goto_next();
}

if(keyboard_check_pressed(ord("M")) && keyboard_check(vk_alt))
{
	x = mouse_x;
	y = mouse_y;
	
}

