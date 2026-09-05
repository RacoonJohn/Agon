rotate @s ~9 ~

execute store result score @s date run time query gametime
scoreboard players operation @s date += @s delay

