///scrItemAdd(itemID, itemCount)
//Use this script to add an item to the inventory. Ex: picking up an item from the environment
//Look for a space with the same item
var modType = argument0;
var firstEmptySlot = scrFirstEmptySlot();
if (firstEmptySlot != -1) {
    game.inventory[firstEmptySlot] = modType;
    return(true);
};

return(false); //Fail
