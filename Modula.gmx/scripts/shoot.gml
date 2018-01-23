/// shoot(angle)
/*
Used for making attacks with gun
*/

var angle = argument0;

with(instance_create(x, y, objBullet)) {
    image_angle = angle;
    direction = angle;
    other.attackCooldown = other.cooldownAfterAttack;
}


