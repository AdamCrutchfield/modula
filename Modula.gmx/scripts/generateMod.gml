///generateMod(x, y, lootQuality, limit)

var xx = argument0;
var yy = argument1;
var lootQuality = argument2 + global.luck;
var limit = argument3;  //-1 for infinite

// 50/50 chance to either make a mod or increase strength and try again
var makeMod = choose(true, false);
if (makeMod) {
    //if you succeed a bunch of times in a row, make a special mod
    if (lootQuality > limit){    
        with instance_create(xx, yy, objMod) {
            special = true;
        }
    //otherwise, make a normal mod with strength equal to number of successes
    } else {
        with instance_create(xx, yy, objMod) {
            strength = lootQuality;
            modType = choose(modLuck, modCelerity, modEtherealness, modRash);
        }
    }
} else {
    generateMod(xx, yy, lootQuality + 1, limit);
}
