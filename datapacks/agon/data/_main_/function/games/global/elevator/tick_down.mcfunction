tag @s add this

execute at @s positioned ~-.5 ~ ~-.5 as @a[dx=0,predicate=_main_:input/jump] positioned ~.5 ~ ~.5 rotated as @s positioned as @n[type=marker,tag=elevator.up,tag=!this] run tp @s ~ ~ ~ ~ ~

tag @s remove this
