

execute store result score #dy rMath run data get entity @s Motion[1] 10000

execute if score #dy rMath matches 1.. run scoreboard players set #dy rMath 0


execute store result score #y fptrick_impulse run attribute @s jump_strength get 10000
scoreboard players operation #y fptrick_impulse -= #dy rMath

scoreboard players add #y fptrick_impulse 1000



function _main_:games/global/player/impulse/horizontal

function fptrick_impulse:launch_global


scoreboard players add @s doubleJump 1
scoreboard players set @s jump 1

