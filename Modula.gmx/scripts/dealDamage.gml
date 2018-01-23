///dealDamage(id, damage, force, pushDirection, useIFrames)

var target = argument0;
var damage = argument1;
var force = argument2;
var pushDirection = argument3;
var useIFrames = argument4;

with (target) {
    if (useIFrames) {
        if (iFrames <= 0) {
            addForce(id, force, pushDirection);
            currentHealth -= damage;
            iFrames = iFramesMax;
        }
    } else {
        currentHealth -= damage;
    }
    
    if (object_get_name(id) == "objDunmot") {
        state = dunmotStates.aggro;
    }
    
    //"bug"
    /*
    if (object_get_name(id) == "objPlayer") {
        attackCooldown = 0;
        state = states.normal;
    }
    */
}

