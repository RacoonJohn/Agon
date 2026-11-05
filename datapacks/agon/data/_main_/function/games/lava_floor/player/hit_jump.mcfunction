

function _main_:games/global/player/impulse/horizontal

execute store result score #y fptrick_impulse run data get entity @s Motion[1] -10000

scoreboard players add #y fptrick_impulse 6000

function fptrick_impulse:launch_global

tag @s remove touch_lava
