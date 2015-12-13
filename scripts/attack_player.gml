//Set up attack methods
if(alarm[0] == -1)
{
    alarm[0] = 15;
    
    //TO-DO: add other items and UI elements
    //create basic hit based on direction
    if(d = dir.left)
        instance_create(x+32, y, itemtype);
    if(d = dir.right)
        instance_create(x-32, y, itemtype);
    if(d = dir.up)
        instance_create(x, y-32, itemtype);
    if(d = dir.down)
        instance_create(x, y+32, itemtype);
}
