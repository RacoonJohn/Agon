tag @s add this

execute at @s positioned ~-.5 ~ ~-.5 as @a[dx=0,predicate=_main_:input/sneak] positioned ~.5 ~ ~.5 rotated as @s positioned as @n[type=marker,tag=elevator.down,tag=!this] run tp @s ~ ~ ~ ~ ~

tag @s remove this
