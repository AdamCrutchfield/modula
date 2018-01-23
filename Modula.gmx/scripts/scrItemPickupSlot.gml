//this script deals with l-clicking an item and picing up the whole stack of items in that box
if (game.inventory[argument1] == -1) { //Is there an item?
    game.inventory[argument1] = argument0; //Switch tht item with the mouse item
    if (game.inventoryCount[argument1] == 0) game.inventoryCount[argument1] = argument2; //Count for that item is now switched with the mouseCount
}
