///generateMod(x, y, lootQuality, limit)

var xx = argument0;
var yy = argument1;
var lootQuality = argument2 + global.luck;
var limit = argument3;  //-1 for infinite

var makeMod = choose(true, false);
if (makeMod) {
    if (lootQuality > limit){    
        with instance_create(xx, yy, objMod) {
            special = true;
        }
    } else {
        with instance_create(xx, yy, objMod) {
            strength = lootQuality;
            modType = choose(modLuck, modCelerity, modEtherealness, modRash);
        }
    }
} else {
    generateMod(xx, yy, lootQuality + 1, limit);
}
