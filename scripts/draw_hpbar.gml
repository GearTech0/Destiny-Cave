//(x, y, x2, y2, col)
//draw health bar
draw_set_colour(c_blue);
draw_rectangle(hpx, hpy, hpxx-(((global.maxhp-global.hp)/global.maxhp)*(hpxx-hpx)), hpyy, false);
draw_set_colour(c_white);
draw_rectangle(hpx, hpy, hpxx, hpyy, true);
