/// modLuck(event)

/* event types
   leftClick,
   rightClick,
   attack,
   takeDamage,
   damage,
   constant,
   pickup,
   drop
 */

event = argument0;
switch (event) {
    case modEvents.pickup:
        objPlayer.cooldownAfterAttack = 0;
        break;
    case modEvents.drop:
        if (!scrItemEquipped(modCelerity)) {
            with (objPlayer) {
                switch (global.character) {
                    case playerCharacters.spartan:
                        cooldownAfterAttack = cooldownAfterAttackSpartan;
                        break;
                    case playerCharacters.sherrif:
                        cooldownAfterAttack = cooldownAfterAttackSherrif;
                        break;
                    case playerCharacters.greaser:
                        cooldownAfterAttack = cooldownAfterAttackGreaser;
                        break;
                    case playerCharacters.cyborg:
                        cooldownAfterAttack = cooldownAfterAttackCyborg;
                        break;
                }
            }
        }
}
