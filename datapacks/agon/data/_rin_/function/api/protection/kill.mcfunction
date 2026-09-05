##kill PM
#context: PM
#
# score inputs:
#   #fillAir _rin_global -> {0:---,1: fill the 8*8*8 region of the marker  with air}
#   #ignoreEntities _rin_global -> {0:kill cloned entities,1: ----}


execute if score #fillAir _rin_global matches 1 at @s run fill ~ ~ ~ ~7 ~7 ~7 air


execute if score #ignoreEntities _rin_global matches 0 at @s as @e[type=!player,tag=!_rin_sys_ignoreClone,tag=_rin_sys_cloned,dx=7,dy=7,dz=7] run function _rin_:sys/protection/clone/entity/kill

kill @s