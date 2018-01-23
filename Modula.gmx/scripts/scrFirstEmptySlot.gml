//Find an empty space and return the correct slot
for (i = 0; i < MAX_INV_SLOTS; i++) {
    if (game.inventory[i] == modNone) return(i);
};

return(-1); //No available space
