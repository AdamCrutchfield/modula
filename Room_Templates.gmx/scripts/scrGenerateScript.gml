//scrGenerateScript(sprite index, image index)
sprite = argument0;
index = argument1;
draw_sprite(LoadFileHere,0,0,0);

for (xx = 0; xx < 15; xx++) {
    for (yy = 0; yy < 15; yy++) {
        xCord = (xx * 32);
        yCord = (yy * 32);
        
        //Show messages
        if ((draw_getpixel(xx,yy)) == $000000) show_debug_message("instance_create(ix + " +string(xCord) +", iy + " +string(yCord) + ", objWall)");
        if ((draw_getpixel(xx,yy)) == $4C4C4C) show_debug_message("instance_create(ix + " +string(xCord) +", iy + " +string(yCord) + ", objDunmot)");
        if ((draw_getpixel(xx,yy)) == $ACACAC) show_debug_message("instance_create(ix + " +string(xCord) +", iy + " +string(yCord) + ", objFly)");
    }
}
draw_clear(sprite);
room_goto(rm_test);
