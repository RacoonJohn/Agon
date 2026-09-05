
$execute store result score #temp rMath run data get storage $(storage) $(nbt)

scoreboard players operation #temp rMath *= #2 rMath
execute store result score #max rMath run data get entity @s data.max
scoreboard players operation #temp rMath < #max rMath


$execute store result storage $(storage) $(nbt) int 1 run scoreboard players get #temp rMath 
