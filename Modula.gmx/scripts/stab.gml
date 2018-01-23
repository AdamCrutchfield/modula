/// stab(targetAngle)
/*
Used for making attacks with spear
*/
var targetAngle = argument0;
var distanceFromCenter = sprite_width / 2;

//distanceFromCenter = 1000;

with(instance_create(x, y, objSpear)) {
    image_angle = targetAngle;
    direction = targetAngle;
    x = other.x;
    y = other.y;
    other.attackCooldown = (stabDistance / stabSpeed) * 2 + other.cooldownAfterAttack;
}


