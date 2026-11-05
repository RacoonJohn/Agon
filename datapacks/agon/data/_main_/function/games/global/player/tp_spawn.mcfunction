

scoreboard players operation #search teamID = @s teamID

execute positioned 1000 0 1000 at @e[type=marker,tag=_rin_sys_cloned,tag=spawnPoint,predicate=_main_:search_game,predicate=_main_:search_team,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
#execute positioned 1000 0 1000 as @e[type=marker,tag=spawnPoint,predicate=_main_:search_game,predicate=_main_:search_team,limit=1,sort=nearest] run say test spawn


execute at @s run spawnpoint @s ~ ~ ~ ~ ~

execute at @s run fill ~-1 ~ ~-1 ~1 ~2 ~1 air

gamemode survival @s

tag @s add spawned
tag @s remove spectate

advancement revoke @s only _main_:use/gap


