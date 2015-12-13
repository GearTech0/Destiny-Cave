checkposition();
//add player tracking code and damage code here
//check if enemy is not interested in player
if(!(obj_player.x > attkx && obj_player.y > attky && 
    obj_player.x < attkxx && obj_player.y < attkyy))
{
    state = enemyState.normal;
}

if(obj_player.x < x)
{
    x -= spd;
}
if(obj_player.y < y)
{
    y -= spd;
}
if(obj_player.x > x)
{
    x += spd;
}
if(obj_player.y > y)
{
    y += spd;
}

enemy_collision();
