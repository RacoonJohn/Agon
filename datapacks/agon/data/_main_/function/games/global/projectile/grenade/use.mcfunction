

scoreboard players operation #temp motionX = @s motionX
scoreboard players operation #temp motionY = @s motionY
scoreboard players operation #temp motionZ = @s motionZ
data modify storage math:data in.rotation set from entity @s Rotation
data modify storage math:data in.UUID set from entity @s UUID

scoreboard players operation #search _rin_global_ownerID = @s _rin_global_playerID


execute at @s anchored eyes positioned ^ ^ ^1 summon snowball run function _main_:games/global/projectile/grenade/launch


advancement revoke @s only _main_:use/grenade
