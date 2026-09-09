
execute unless predicate dapvp:system/is_player run return run data modify entity @s Motion[1] set value 0.4d



scoreboard players set #x fptrick_impulse 0
scoreboard players set #y fptrick_impulse 4000
scoreboard players set #z fptrick_impulse 0

function fptrick_impulse:launch_global
