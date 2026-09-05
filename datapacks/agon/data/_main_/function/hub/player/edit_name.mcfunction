tag @s add myPlayer
tag @s add spectate

scoreboard players set #dx rMath 13
scoreboard players set #dy rMath 11
scoreboard players set #dz rMath 13
execute positioned -9947.0 -2 -10006.0 run function _main_:games/global/warn_zone/main


execute unless block -9941 1 -10002 minecraft:pale_oak_hanging_sign run function _main_:hub/player/set_sign

#execute if entity @s[tag=warn] run tp @s -9941 0 -10000


tag @s remove warn
tag @s remove myPlayer
tag @s remove spectate
