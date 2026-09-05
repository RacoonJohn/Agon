



effect clear @s resistance
function _main_:games/global/fx/statue_a
loot replace entity @s weapon.offhand loot _main_:fx/win_final
playsound item.totem.use neutral @s ~ ~ ~ 0.2 1 0
playsound entity.firework_rocket.launch neutral @s ~ ~ ~ 1 2 0.5
playsound entity.firework_rocket.launch neutral @s ~ ~ ~ 1 1 0.5
playsound entity.firework_rocket.launch neutral @s ~ ~ ~ 1 0 0.5
function _main_:games/global/fx/statue_p
