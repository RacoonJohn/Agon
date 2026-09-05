
execute store result score SD.o0 rMath run data get entity @e[tag=sd.plane,limit=1] Pos[0] 1000
execute store result score SD.o1 rMath run data get entity @e[tag=sd.plane,limit=1] Pos[1] 1000
execute store result score SD.o2 rMath run data get entity @e[tag=sd.plane,limit=1] Pos[2] 1000


execute as @e[tag=sd.plane,limit=1] unless data entity @s billboard rotated as @s positioned .0 .0 .0 positioned ^ ^ ^1 run return run function sd:system/unit_normal
execute as @e[tag=sd.plane,limit=1] if data entity @s {billboard:"fixed"} rotated as @s positioned .0 .0 .0 positioned ^ ^ ^1 run return run function sd:system/unit_normal

execute at @s rotated ~180 0 as @e[tag=sd.plane,limit=1] if data entity @s {billboard:"vertical"} positioned .0 .0 .0 positioned ^ ^ ^1 run return run function sd:system/unit_normal
execute at @s rotated ~ ~ as @e[tag=sd.plane,limit=1] if data entity @s {billboard:"center"} positioned .0 .0 .0 positioned ^ ^ ^-1 run return run function sd:system/unit_normal

#horizontal
execute store result entity @e[tag=sd.plane,limit=1] Rotation[1] float -0.001 run data get entity @s Rotation[1] 1000
execute as @e[tag=sd.plane,limit=1] rotated as @s positioned .0 .0 .0 positioned ^ ^ ^1 run return run function sd:system/unit_normal
