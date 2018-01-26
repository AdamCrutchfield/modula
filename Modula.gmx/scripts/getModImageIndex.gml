///getModImageIndex(modName)
var modName = argument0;

switch modName {
    case modNone: return 0;
    case modLuck: return 2;
    case modCelerity: return 3;
    case modEtherealness: return 4;
    case modRash: return 5;
    default: return 1;
}
