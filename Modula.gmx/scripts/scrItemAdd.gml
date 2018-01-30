///scrItemAdd(modType, _str)
//Use this script to add an item to the inventory. Ex: picking up an item from the environment
//Look for a space with the same item
var modType = argument0;
var _str = argument1;
var firstEmptySlot = scrFirstEmptySlot();
if (firstEmptySlot != -1) {
    game.inventory[firstEmptySlot, 0] = modType;
    game.inventory[firstEmptySlot, 1] = _str;
    return(true);
};

return(false); //Fail
