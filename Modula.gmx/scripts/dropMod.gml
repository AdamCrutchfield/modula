/// dropMod(position)

position = argument0;

script_execute(global.equippedMods[| position], modEvents.drop);
global.equippedMods[| position] = modNone;
