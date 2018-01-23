///scrItemInInventory(item)
//Use this script to test if the player has a particular item in their inventory. Ex: when opening a door, run the script to test if the player has a key in their inventory.
//Returning 0 means not found. 1 means it is found.
for (i = 0; i < MAX_INV_SLOTS; i++) {
    if (game.inventory[i] == argument0) return(true);
};
return(false);
