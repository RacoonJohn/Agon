

execute store result score #dx rMath run data get storage math:data game_selected.map.selected

execute unless data storage math:data game_selected.map.selected run scoreboard players set #dx rMath 0

execute store result score #x rMath run data get storage math:data game_selected.pos.dx
scoreboard players operation #x rMath *= #dx rMath

scoreboard players add #x rMath 9968

data modify storage math:data macro set from storage math:data game_selected.pos
execute store result storage math:data macro.x int 1 run scoreboard players get #x rMath



execute store result storage math:data macro.dx int .9999999999 run data get storage math:data macro.dx
execute store result storage math:data macro.dz int .9999999999 run data get storage math:data macro.dz
