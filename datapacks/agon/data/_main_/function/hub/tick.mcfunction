
execute as @a at @s run function _main_:hub/player/tick


execute as @e[type=block_display,tag=menu] at @s run function _main_:hub/menu/tick

execute as @e[type=interaction,tag=back_to_lobby] at @s run function _main_:hub/back_to_lobby/tick

execute as @e[type=interaction,tag=backFromName] at @s run function _main_:hub/back_to_lobby/name

execute as @e[type=item_display,tag=teamSelector] at @s run function _main_:hub/team/tick



tellraw @s {atlas:"gui",sprite:"mob_effect/haste",object:"atlas"}
scoreboard players reset @a death
scoreboard players reset @a death_detection