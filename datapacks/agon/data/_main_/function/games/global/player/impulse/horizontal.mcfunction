
#scoreboard players operation #temp rMath = #Motion posX
#scoreboard players operation #temp rMath *= #temp rMath
#
#scoreboard players operation Math.In0 rMath = #Motion posZ
#scoreboard players operation Math.In0 rMath *= Math.In0 rMath
#scoreboard players operation Math.In0 rMath += #temp rMath
#
#execute store result score #s rMath run function math:function/sqrt
#
#scoreboard players operation #s rMath /= #2 rMath
##scoreboard players operation #s rMath /= #5 rMath
#
#
#execute at @s rotated ~ 0 positioned 0.0 0 0.0 positioned ^ ^ ^1 run function dapvp:system/get_pos
#
#execute store result score #x fptrick_impulse run data get storage dapvp:math Pos[0] 1000
#execute store result score #z fptrick_impulse run data get storage dapvp:math Pos[2] 1000
#scoreboard players operation #x fptrick_impulse *= #s rMath
#scoreboard players operation #z fptrick_impulse *= #s rMath
#scoreboard players operation #x fptrick_impulse /= #100 rMath
#scoreboard players operation #z fptrick_impulse /= #100 rMath




scoreboard players operation #x fptrick_impulse = #Motion posX
scoreboard players operation #z fptrick_impulse = #Motion posZ

scoreboard players operation #x fptrick_impulse /= #2 rMath
scoreboard players operation #z fptrick_impulse /= #2 rMath

execute store result score #s0 rMath run attribute @s movement_speed get 1000


scoreboard players set #dz rMath 0
scoreboard players set #dx rMath 0

execute if predicate _main_:input/forward run scoreboard players operation #dz rMath += #s0 rMath
execute if predicate _main_:input/backward run scoreboard players operation #dz rMath -= #s0 rMath
execute if predicate _main_:input/right run scoreboard players operation #dx rMath += #s0 rMath
execute if predicate _main_:input/left run scoreboard players operation #dx rMath -= #s0 rMath


execute at @s rotated ~ 0 positioned 0.0 0 0.0 positioned ^ ^ ^1 run function dapvp:system/get_pos

execute store result score #x fptrick_impulse run data get storage dapvp:math Pos[0] 1000
execute store result score #z fptrick_impulse run data get storage dapvp:math Pos[2] 1000
scoreboard players operation #x fptrick_impulse *= #dz rMath
scoreboard players operation #z fptrick_impulse *= #dz rMath
scoreboard players operation #x fptrick_impulse /= #100 rMath
scoreboard players operation #z fptrick_impulse /= #100 rMath


execute at @s rotated ~ 0 positioned 0.0 0 0.0 positioned ^-1 ^ ^ run function dapvp:system/get_pos

execute store result score #dx fptrick_impulse run data get storage dapvp:math Pos[0] 1000
execute store result score #dz fptrick_impulse run data get storage dapvp:math Pos[2] 1000
scoreboard players operation #dx fptrick_impulse *= #dx rMath
scoreboard players operation #dz fptrick_impulse *= #dx rMath
scoreboard players operation #dx fptrick_impulse /= #100 rMath
scoreboard players operation #dz fptrick_impulse /= #100 rMath

scoreboard players operation #x fptrick_impulse += #dx fptrick_impulse
scoreboard players operation #z fptrick_impulse += #dz fptrick_impulse
