
data modify storage math:data Pos set from entity @s Pos

execute store result score #x rMath run data get storage math:data Pos[0]
execute store result score #y rMath run data get storage math:data Pos[1]
execute store result score #z rMath run data get storage math:data Pos[2]

scoreboard players operation #x2 rMath = #x rMath
scoreboard players operation #y2 rMath = #y rMath
scoreboard players operation #z2 rMath = #z rMath
scoreboard players operation #x2 rMath += #dx rMath
scoreboard players operation #y2 rMath += #dy rMath
scoreboard players operation #z2 rMath += #dz rMath

execute store result storage math:data macro.dx int 1 run scoreboard players get #dx rMath
execute store result storage math:data macro.dy int 1 run scoreboard players get #dy rMath
execute store result storage math:data macro.dz int 1 run scoreboard players get #dz rMath

execute at @a[tag=myPlayer] run function _main_:games/global/warn_zone/check with storage math:data macro





kill @s

