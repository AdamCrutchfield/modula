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
switch (event) {
    case modEvents.pickup:
        global.luck++;
        break;
    case modEvents.drop:
        global.luck--;
        break;
}
