function _main_:games/global/player/impulse/horizontal

scoreboard players set #y fptrick_impulse 13200
execute if score #search gameID matches 8 run scoreboard players set #y fptrick_impulse 9000



scoreboard players set #dy fptrick_impulse 0

#execute unless score @s jump matches 1.. store result score #dy fptrick_impulse run attribute @s jump_strength get 10000

execute store result score #dy fptrick_impulse run data get entity @s Motion[1] -10000


#execute if score #big rMath matches 1 run scoreboard players add #dy fptrick_impulse 13000
scoreboard players operation #y fptrick_impulse += #dy fptrick_impulse

function fptrick_impulse:launch_global



#execute if score #big rMath matches 1 run attribute @s safe_fall_distance modifier add jump_pad 30 add_value
execute if score #search gameID matches 8 run attribute @s safe_fall_distance modifier add jump_pad 6 add_value
attribute @s safe_fall_distance modifier add jump_pad 12 add_value

tag @s add jumpPaded



scoreboard players set @s jump 1
