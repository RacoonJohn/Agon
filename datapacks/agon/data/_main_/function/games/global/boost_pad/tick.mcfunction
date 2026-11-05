
data remove storage math:data in.rotation
execute if entity @s[tag=dir] run data modify storage math:data in.rotation set from entity @s Rotation
execute positioned ~-1 ~-1 ~-1 as @a[dx=1,dy=1,dz=1,predicate=_main_:flag/on_ground] at @s run function _main_:games/global/boost_pad/boost

