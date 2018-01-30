event = argument0;
//strength = argument1;

switch (event) {
    case modEvents.pickup:
        objPlayer.damage *= 1.15;
        break;
    case modEvents.drop:
        objPlayer.damage /= 1.15;
        break;
}
