
gamemode creative @s
tag @s add editInv

tp @s -10000 1 -10000 90 0
execute if score #inventoryInited rMath matches 1 run return fail


scoreboard players set #X2 _rin_global -10000
scoreboard players set #Y2 _rin_global 0
scoreboard players set #Z2 _rin_global -10000


scoreboard players remove #X2 _rin_global 4
scoreboard players remove #Y2 _rin_global 1
scoreboard players remove #Z2 _rin_global 4

#clone 9969 -64 9997 9977 -59 9989
scoreboard players set #X0 _rin_global 9969
scoreboard players set #Y0 _rin_global -64
scoreboard players set #Z0 _rin_global 9989
scoreboard players set #X1 _rin_global 9978
scoreboard players set #Y1 _rin_global -59
scoreboard players set #Z1 _rin_global 9998

scoreboard players set #fillAir _rin_global 0
scoreboard players set #ignoreAir _rin_global 1
scoreboard players set #ignoreEntities _rin_global 0
scoreboard players set #canPlace _rin_global 1

function _rin_:api/protection/clone

scoreboard players set #inventoryInited rMath 1
