checkposition();
if(obj_player.x > attkx && obj_player.y > attky && 
    obj_player.x < attkxx && obj_player.y < attkyy)
{
    state = enemyState.attacking;
}

if(d == enemydir.left)
{
    if(!place_meeting(x-spd, y, obj_wall))
        x-=spd;
}else if(d == enemydir.right)
{
    if(!place_meeting(x+spd, y, obj_wall))
    x+=spd;
}else if(d == enemydir.up)
{
    if(!place_meeting(x, y-spd, obj_wall))
    y-=spd;
}else if(d == enemydir.down)
{
    if(!place_meeting(x, y+spd, obj_wall))
    y+=spd;
}else if(d == enemydir.nowhere){}

if(alarm[1] == -1)
{
    alarm[1] = 15;
}

enemy_collision();
