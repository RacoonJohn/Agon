## Setup a protection region from two pos by summonning Protection Markers (PMs)

## PMs are markers with tag _rin_sys_protection 
#   [optionnally] score _rin_protection_size -> size of the region - 1 (if not specified, 7 -> region of 8*8*8)
#   [optionnally] tag _rin_sys_force, don't allow player to place blocks in the region (don't give back blocks)


##WARNING: clone with 8*8*8 regions only


##origin from destination should be loaded
#
# scores inputs:
#   #ignoreAir _rin_global -> {0:clone all blocks, 1: don't clone air blocks}
#   #ignoreEntities _rin_global -> {0:clone entities, 1: don't clone entities}
#   #canPlace _rin_global -> {0: can't place blocks in the region, 1: can place blocks in the region}
#   #X0 _rin_global -> X pos origin from clone
#   #Y0 _rin_global -> Y pos origin from clone
#   #Z0 _rin_global -> Z pos origin from clone
#   #X1 _rin_global -> X pos destination from clone ( >= #X0)
#   #Y1 _rin_global -> Y pos destination from clone ( >= #Y0)
#   #Z1 _rin_global -> Z pos destination from clone ( >= #Z0)
#   #X2 _rin_global -> X pos destination to clone
#   #Y2 _rin_global -> Y pos destination to clone
#   #Z2 _rin_global -> Z pos destination to clone



#####################################################################################################


#be55dcab-d243-4145-b5e3-a9fcf93d9cb4 : origin
data modify storage _rin_:intern pos set value [0,0,0]
execute store result storage _rin_:intern pos[0] int 1 run scoreboard players get #X0 _rin_global
execute store result storage _rin_:intern pos[1] int 1 run scoreboard players get #Y0 _rin_global
execute store result storage _rin_:intern pos[2] int 1 run scoreboard players get #Z0 _rin_global
data modify entity be55dcab-d243-4145-b5e3-a9fcf93d9cb4 Pos set from storage _rin_:intern pos

scoreboard players operation #temp _rin_protection_origin_X = #X1 _rin_global
scoreboard players operation #temp _rin_protection_origin_Y = #Y1 _rin_global
scoreboard players operation #temp _rin_protection_origin_Z = #Z1 _rin_global
scoreboard players operation #temp _rin_protection_origin_X -= #X0 _rin_global
scoreboard players operation #temp _rin_protection_origin_Y -= #Y0 _rin_global
scoreboard players operation #temp _rin_protection_origin_Z -= #Z0 _rin_global




scoreboard players set #count _rin_protection_origin_X 0
execute positioned as be55dcab-d243-4145-b5e3-a9fcf93d9cb4 run function _rin_:sys/protection/clone/loop_x

tag @e remove _rin_sys_cloned_now

execute in overworld run tp be55dcab-d243-4145-b5e3-a9fcf93d9cb4 0 0 0


