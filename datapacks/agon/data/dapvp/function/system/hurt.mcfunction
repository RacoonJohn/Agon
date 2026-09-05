
execute unless predicate dapvp:system/is_player run return run data modify entity @s Motion[1] set value 0.4d

#scoreboard players set #x fptrick_impulse 0
#scoreboard players set #z fptrick_impulse 0
function dapvp:system/horizontal

execute store result score #y fptrick_impulse run data get entity @s Motion[1] -9000

scoreboard players set #temp fptrick_impulse 4000
scoreboard players operation #y fptrick_impulse += #temp fptrick_impulse

execute if predicate dapvp:system/on_ground run scoreboard players set #y fptrick_impulse 410

function fptrick_impulse:launch_global

