
execute if score #ignoreEntities _rin_global matches 1 if blocks ~ ~ ~ ~7 ~7 ~7 10000000 200 -2355936 all if entity @e[dx=7,dy=7,dz=7,tag=!_rin_sys_ignoreClone] summon marker run function _rin_:sys/protection/clone/summon
execute if score #ignoreAir _rin_global matches 1 unless blocks ~ ~ ~ ~7 ~7 ~7 10000000 200 -2355936 all summon marker run function _rin_:sys/protection/clone/summon
execute if score #ignoreAir _rin_global matches 0 summon marker run function _rin_:sys/protection/clone/summon



scoreboard players add #count _rin_protection_origin_Y 8
execute if score #count _rin_protection_origin_Y < #temp _rin_protection_origin_Y positioned ~ ~8 ~ run function _rin_:sys/protection/clone/loop_y

