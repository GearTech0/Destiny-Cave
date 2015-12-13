if(d == enemydir.left)
{
    sprite_index = spr_enemy_walkhor;
    image_xscale = -1;
    image_speed = 0.08;
}else if(d == enemydir.right)
{
    sprite_index = spr_enemy_walkhor;
    image_xscale = 1;
    image_speed = 0.08;
}else if(d == enemydir.nowhere)
{
    sprite_index = spr_enemy_idle;
    image_speed = 0.08;
}
