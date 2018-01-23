/// slash(midpointAngle)
/*
Used for making attacks with sword
*/

instance_deactivate_object(objShield);

var midpointAngle = argument0;

distanceFromCenter = 1000;

with(instance_create(x, y, objSword)) {
    image_angle = midpointAngle + arcDegrees / 2;
    startingAngle = image_angle;
    direction = image_angle;
    x = objPlayer.x + lengthdir_x(distanceFromPlayer, direction);
    y = objPlayer.y + lengthdir_y(distanceFromPlayer, direction);
    other.attackCooldown = arcDegrees / swingSpeed + other.cooldownAfterAttack;
}


