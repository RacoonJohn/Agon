scoreboard players add #count dapvp.ID 1

scoreboard players operation @s dapvp.ID = #count dapvp.ID


#execute store result storage dapvp:math macro.id int 1 run scoreboard players get @s dapvp.ID
#function dapvp:system/player/use/create_data with storage dapvp:math macro
