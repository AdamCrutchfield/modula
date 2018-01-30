event = argument0;
_strength = argument1;

switch (event) {
    case modEvents.pickup:
        objPlayer.damage += (_strength * 1.15);
        break;
    case modEvents.drop:
        objPlayer.damage -=  (_strength * 1.15);
        break;
}
