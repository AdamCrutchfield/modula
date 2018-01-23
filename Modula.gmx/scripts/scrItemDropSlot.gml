//this script deals with l-clicking an item and picing up the whole stack of items in that box
if (game.inventory[argument0] != -1) {                            //If there is an item in the box
    game.inventory[argument0] = -1;                               //remove the item
    if (game.inventoryCount[argument0] != -1) game.inventoryCount[argument0] = 0; //and reduce its count to zero
}
