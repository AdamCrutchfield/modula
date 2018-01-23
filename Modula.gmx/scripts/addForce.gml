///addForce(id, force, forceDirection)
targetInstance = argument0;
strength = argument1;
forceDirection = argument2;
with (targetInstance) {
    ax += lengthdir_x(other.strength, other.forceDirection);
    ay += lengthdir_y(other.strength, other.forceDirection);
}
