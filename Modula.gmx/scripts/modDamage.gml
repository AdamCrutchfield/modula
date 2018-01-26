event = argument0;

switch (event) {
    case modEvents.pickup:
        objPlayer.damageCoefficient *= 1.15;
        break;
    case modEvents.drop:
        objPlayer.damageCoefficient /= 1.15;
        break;
}
