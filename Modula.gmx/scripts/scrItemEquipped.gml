///scrItemInInventory(item)
//Use this script to test if the player has a particular item equipped. Ex: when opening a door, run the script to test if the player has a key in their inventory.
//Returning 0 means not found. 1 means it is found.
for (i = 0; i < 10; i++) {
    if (game.equipped[i, 0] == argument0) return(true);
};
return(false);
