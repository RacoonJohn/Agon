



execute if score #end rMath matches 1 run return fail

scoreboard players operation #search teamID = @s teamID
execute positioned ~-1.5 ~ ~-1.5 if entity @a[tag=myPlayer,predicate=!_main_:search_team,dx=2,dy=0,dz=2] run function _main_:games/bridge/goal/round_win

scoreboard players operation #search teamID = @s teamID
execute positioned ~-1.5 ~ ~-1.5 as @a[tag=myPlayer,predicate=_main_:search_team,dx=2,dy=0,dz=2] run function _main_:games/bridge/player/kill





