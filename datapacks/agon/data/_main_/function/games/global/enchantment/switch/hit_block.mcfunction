
execute on origin run tp @s ~ ~ ~

execute if block ~ ~ ~0.1 #_main_:air on origin at @s run tp @s ~ ~ ~0.4
execute if block ~ ~ ~-0.1 #_main_:air on origin at @s run tp @s ~ ~ ~-0.4
execute if block ~0.1 ~ ~ #_main_:air on origin at @s run tp @s ~0.4 ~ ~
execute if block ~-0.1 ~ ~ #_main_:air on origin at @s run tp @s ~-0.4 ~ ~
execute if block ~ ~0.1 ~ #_main_:air on origin at @s run tp @s ~ ~0.1 ~
execute if block ~ ~-0.1 ~ #_main_:air on origin at @s run tp @s ~ ~-2.1 ~


tag @s add _main_.enchant.arrow.used
