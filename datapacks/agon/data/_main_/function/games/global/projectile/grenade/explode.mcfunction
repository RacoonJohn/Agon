particle flash{color:-1577058305} ~ ~ ~ 0 0 0 0 1 force
particle explosion ~ ~ ~

scoreboard players operation #search _rin_global_playerID = @s _rin_global_ownerID


data modify storage math:data in.pos set from entity @s Pos


tag @s add this

execute as @a[distance=..3] run damage @s 10 explosion by @n[tag=this,type=marker] from @p[predicate=_main_:search_id]
damage @p[predicate=_main_:search_id,distance=..3] 10 explosion

execute as @e[distance=..3] run function _main_:games/global/projectile/grenade/kb

kill @s
