//running
if(keyrun)
    spd = 9;
else
    spd = 3;

//movement vars
movementhor = keyleft + keyright;
movementvert = keyup + keydown;
hsp = movementhor * spd;
vsp = movementvert * spd;

//Horizontal Collision
if(place_meeting(x+hsp, y, obj_wall))
{
    if(!place_meeting(x+sign(hsp), y, obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

//Vertical Collision
if(place_meeting(x, y+vsp, obj_wall))   //FIX BUG WHERE PLAYER WILL SKIP WHEN RIDING THE WALL
{
    if(!place_meeting(x, y+sign(vsp), obj_wall))
    {
        y+=sign(hsp);
    }
    vsp = 0;
}

//TO-DO: add collision to enemies 
if(place_meeting(x+1, y, obj_enemy))
{
    inst = instance_place(x+1, y, obj_enemy);
    check_hit(inst, true, 1);
}
if(place_meeting(x-1, y, obj_enemy))
{
    inst = instance_place(x-1, y, obj_enemy);
    check_hit(inst, true, -1);
}
if(place_meeting(x, y+1, obj_enemy))
{
    inst = instance_place(x, y+1, obj_enemy);
    check_hit(inst, false, 1);
}
if(place_meeting(x, y-1, obj_enemy))
{
    inst = instance_place(x, y-1, obj_enemy);
    check_hit(inst, false, -1);
}

//Figure out direction
if(sign(hsp) > 0) d = dir.left;
else if(sign(hsp) < 0) d = dir.right;
else if(sign(vsp) > 0) d = dir.down;
else if(sign(vsp) < 0) d = dir.up;

//direct the player
if(hsp < 0)image_xscale = -1;
if(hsp > 0) image_xscale = 1;

if(hsp != 0)
{
    sprite_index = spr_player_walk;
    image_speed = 0.08;
}else if(vsp > 0){
    sprite_index = spr_walkdown;
    image_speed = 0.08;
}else if(vsp < 0){
    sprite_index = spr_walkup;
    image_speed = 0.08;
}
if(hsp == 0 && vsp == 0){
    sprite_index = spr_player_idle;
    image_speed = 0.05;
}
    
x += hsp;
y += vsp;
