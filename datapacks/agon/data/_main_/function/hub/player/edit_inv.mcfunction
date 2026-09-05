tag @s add myPlayer
tag @s add spectate

scoreboard players set #dx rMath 15
scoreboard players set #dy rMath 11
scoreboard players set #dz rMath 15
execute positioned -10007.0 -2 -10007.0 run function _main_:games/global/warn_zone/main

#execute if entity @s[tag=warn] run tp @s -10000 0 -10000


tag @s remove warn
tag @s remove myPlayer
tag @s remove spectate
