

function _main_:games/global/map/get_coord

execute store result score #dx rMath run data get storage math:data macro.dx
execute store result score #dy rMath run data get storage math:data macro.dy
execute store result score #dz rMath run data get storage math:data macro.dz

scoreboard players add #dx rMath 1
scoreboard players add #dz rMath 1

#scoreboard players set #fillAir _rin_global 0
#scoreboard players set #ignoreAir _rin_global 1
#scoreboard players set #ignoreEntities _rin_global 0
#scoreboard players set #canPlace _rin_global 1


scoreboard players operation #X0 _rin_global = #x rMath
scoreboard players set #Y0 _rin_global -64
execute store result score #Z0 _rin_global run data get storage math:data macro.z
scoreboard players operation #X1 _rin_global = #X0 _rin_global
scoreboard players operation #Y1 _rin_global = #Y0 _rin_global
scoreboard players operation #Z1 _rin_global = #Z0 _rin_global
scoreboard players operation #X1 _rin_global += #dx rMath
scoreboard players operation #Y1 _rin_global += #dy rMath
scoreboard players operation #Z1 _rin_global += #dz rMath
scoreboard players set #X2 _rin_global 9000
scoreboard players set #Y2 _rin_global -64
scoreboard players set #Z2 _rin_global 9000

function _main_:games/global/map/macro with storage math:data macro


