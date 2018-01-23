/*
-1 = Default no item
0 = stacking (max stack 99)
1 = non-stacking (max stack 1)
*/

if (game.mouseItem == 0 || game.mouseItem == 1) {
    mouseItemType = 0;
    maxCount = 99;
};

if (game.mouseItem == 2) {
    mouseItemType = 0;
    maxCount = 1;
};
if (game.mouseItem = -1) mouseItemType = -1;
