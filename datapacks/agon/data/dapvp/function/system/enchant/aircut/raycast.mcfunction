
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!dapvp.system.attacker] positioned ~0.5 ~0.5 ~0.5 run damage @s 5 player_attack by @a[tag=dapvp.system.attacker,limit=1]


execute store result score #temp dapvp.math run random value 0..1
execute if score #temp dapvp.math matches 0 run particle sweep_attack ~ ~0.6 ~ 0.2 0.2 0.2 0.1 1 force


scoreboard players remove #count dapvp.math 1
execute if score #count dapvp.math matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #air run function dapvp:system/enchant/aircut/raycast

