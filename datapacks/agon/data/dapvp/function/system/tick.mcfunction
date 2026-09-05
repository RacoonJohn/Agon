
execute store result score #gametime dapvp.math run time query gametime

execute as @a at @s run function dapvp:system/player/tick

#warn-off
execute as @e[tag=!dapvp.system.arrow,type=arrow] run function dapvp:system/arrow/init


scoreboard players set @a dapvp.combo.block 0

#warn-off
execute as @e[type=fishing_bobber] at @s run function dapvp:system/fishing_bobber/tick


