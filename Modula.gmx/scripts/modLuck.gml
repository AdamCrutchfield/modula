/// modLuck(event)

/* event types
   leftClick,
   rightClick,
   attack,
   takeDamage,
   damage,
   constant,
   pickup,
   drop
 */

event = argument0;
_strength = argument1;
switch (event) {
    case modEvents.pickup:
        global.luck += _strength;
        break;
    case modEvents.drop:
        global.luck -= _strength;
        break;
}
