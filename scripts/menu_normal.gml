normal_getKeys();

if(-keyup && choosing)
{
    if(choice > 0)
    {
        choice -= 1;
        if(alarm[0] == -1)
        {
            alarm[0] = 15;
            choosing = false;
        }
    }
}if(keydown && choosing)
{
    if(choice < 2)
    {
        choice += 1;
        if(alarm[0] == -1)
        {
            alarm[0] = 15;
            choosing = false;
        }
    }
}

//do stuff based on the player's choice
if(keypause)
{
    if(choice == 0)
    {
        room = testroom;
    }if(choice == 2)
    {
        game_end();
    }
}
