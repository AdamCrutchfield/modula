/// move()

//decide velocity based on acceleration
vx = (vx + ax) * frict;
vy = (vy + ay) * frict;

direction = point_direction(0, 0, vx, vy);

//--------//Collide//-----------//
var loopControl = 10000;
var startvx = vx;
var startvy = vy;
//walls
while (place_meeting(x + vx, y + vy, objSolid)) {
    var xBlocked = place_meeting(x + vx, y, objSolid);
    var yBlocked = place_meeting(x, y + vy, objSolid);
    if (xBlocked) vx -= startvx * global.secondsPassed;
    if (yBlocked) vy -= startvy * global.secondsPassed;
    loopControl--;
    if (loopControl < 0) {
        vx = 0;
        vy = 0;
        exit;
    }
}

//characters
/*
if (place_meeting(x, y, objCharacter)) {
    with (instance_nth_nearest(x, y, objCharacter, 2)) {
        x -= lengthdir_x(10 / point_distance(x, y, other.x, other.y), point_direction(x, y, other.x, other.y));
        y -= lengthdir_y(10 / point_distance(x, y, other.x, other.y), point_direction(x, y, other.x, other.y));
    }
}
*/

//--------//End Collide//-------//

direction = point_direction(0, 0, vx, vy);
speed = point_distance(0, 0, vx, vy);
ax = 0;
ay = 0;
