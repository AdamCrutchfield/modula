if (!place_meeting(x,y,objTrail))
{
    instance_create(x,y,objTrail);
    global.rooms -= 1;
}

if (global.rooms < 1) instance_destroy();
