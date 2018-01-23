//slot is slot

var slot = argument0;
var mouseHasItem = (game.mouseItem != -1);
var slotHasItem = (game.inventory[slot] != -1);

scrMouseItemCheck();

if (mouseHasItem) {
    if (slotHasItem) {
        if (game.mouseItem == game.inventory[slot]) {
            if (game.inventoryCount[slot] < MAX_STACK_SIZE) {
                game.mouseCount -= 1;
                game.inventoryCount[slot] += 1;
                if (game.mouseCount == 0) game.mouseItem = -1;
            };
            else {
                Lclick = true;
                Rclick = false;
            };
        };
        else {
            var tempItem = game.inventory[slot];
            var tempCount = game.inventoryCount[slot];
            scrItemDropSlot(slot); //remove item in slot
            scrItemPickupSlot(game.mouseItem, slot, game.mouseCount); //put mouse item in that box you clicked
            game.mouseItem = tempItem; //Put whatever item was in the box onto the mouse
            game.mouseCount = tempCount;
            Lclick = true;
            Rclick = false;
        };
    } else {
        game.inventoryCount[slot] += 1;
        game.inventory[slot] = game.mouseItem;
        game.mouseCount -= 1;
        if (game.mouseCount == 0) game.mouseItem = -1;
    }
} else {
    if (slotHasItem) {
        game.mouseCount += 1;
        game.mouseItem = game.inventory[slot];
        game.inventoryCount[slot] -= 1;
        if (game.inventoryCount[slot] == 0) game.inventory[slot] = -1;
    } else {
        //do nothing
    }
}
