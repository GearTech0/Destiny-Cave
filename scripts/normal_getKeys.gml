//For State: Normal

//Movement Keys
keyleft = -keyboard_check(ord("A"));
keyright = keyboard_check(ord("D"));
keyup = -keyboard_check(ord("W"));
keydown = keyboard_check(ord("S"));

//Action Keys
keyaction = mouse_check_button_pressed(mb_left);
keyrun = keyboard_check(vk_shift);

//Item Keys
keyitem[0] = keyboard_check_pressed(ord("Q"));
keyitem[1] = keyboard_check_pressed(ord("E"));
keyitem[2] = keyboard_check_pressed(ord("R"));
keyitem[3] = keyboard_check_pressed(ord("F"));

//Function keys
keypause = keyboard_check_pressed(vk_enter);
keystats = keyboard_check(vk_tab);
