



effect clear @s resistance
function _main_:games/global/fx/statue_a
loot replace entity @s weapon.offhand loot _main_:fx/loose_final
playsound block.anvil.place neutral @s ~ ~ ~ 0.3 0 0
playsound entity.player.death neutral @s ~ ~ ~ 1 1 0
function _main_:games/global/fx/statue_p
