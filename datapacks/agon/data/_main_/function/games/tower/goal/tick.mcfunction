
execute if score #end rMath matches 1 run return fail

execute positioned ~-1 ~ ~-1 as @a[limit=1,sort=nearest,predicate=_main_:flag/on_ground,dx=1,dz=1,dy=0] run function _main_:games/tower/player/win

