# modula
files related to Adam and Matt's Gamemaker: Studio game


## project todo

### enemies
[x] dunmot

[ ] rurtle

[ ] "fly"

[ ] "shooter"

[ ] "lootmite"

### characters
*character - primary action - secondary action - number of mod slots - miscellaneous*

[x] spartan - [x] spear - [x] shield - [ ] 8 -

[x] outlaw - [x] revolver - [ ] lasso - [ ] 6 -

[x] greaser - [x] stilleto - [ ] taunt - [ ] 10 -

[ ] cyborg - [ ] laser cannon - [ ] short teleport - [ ] 8 -

### mods
Enemies each have a “Loot quality” variable that determines its modifier drop’s lowest possible value.
Chance of getting a +x stat mod (from enemy with lootQuality of 1) is 1/(2^x) so +1 is 50%, +2 is 25%, +3 is 12.5%, etc. when mod is generated, caps at some point, remaining chance is for special mod
At lootQuality of 0, no drop is 50%, +1 is 25%, etc.
At 2, +2 is 50%, +3 25%, etc.

### special mods
