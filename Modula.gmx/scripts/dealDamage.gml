///dealDamage(id, damage, force, pushDirection, useIFrames)

var _target = argument0;
var _damage = argument1;
var _force = argument2;
var _pushDirection = argument3;
var _useIFrames = argument4;

with (_target) {
    if (_useIFrames) {
        if (iFrames <= 0) {
            addForce(id, _force, _pushDirection);
            currentHealth -= _damage;
            iFrames = iFramesMax;
        }
    } else {
        currentHealth -= _damage;
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

