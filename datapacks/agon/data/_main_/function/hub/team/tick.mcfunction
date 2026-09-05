

execute if entity @s[tag=r] run scoreboard players set #search teamID 1
execute if entity @s[tag=g] run scoreboard players set #search teamID 2
execute if entity @s[tag=b] run scoreboard players set #search teamID 3
execute if entity @s[tag=p] run scoreboard players set #search teamID 4
execute if entity @s[tag=s] run scoreboard players set #search teamID -1

execute positioned ~-2 ~ ~-2 as @a[dx=3,dz=3,dy=0,predicate=!_main_:search_team] run function _main_:hub/team/join
