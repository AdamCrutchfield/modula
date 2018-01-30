//returns first empty slot in inventory
for (i = 0; i < MAX_INV_SLOTS; i++) {
    if (game.inventory[i, 0] == modNone) return(i);
};

return(-1); //No available space
