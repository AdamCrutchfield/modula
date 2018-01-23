//argument0 is item id and argument1 is item count
//This sets the global max count values of the item that is trying to be added
game.mouseItem = argument0;
scrMouseItemCheck();
game.mouseItem = -1;
//Find a compatible space and return the correct slot back to the "findit" variable
for (i = 0; i < game.maxItems; i++) {
    if (game.inventory[i] == argument0) && ((argument1 + game.inventoryCount[i]) <= game.maxCount) return(i);
};
return(-1); //No available space
