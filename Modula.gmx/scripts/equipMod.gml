/// equipMod(modType)

modType = argument0;

global.equippedMods[| ds_list_size(global.equippedMods)] = modType;
script_execute(modType, modEvents.pickup);
