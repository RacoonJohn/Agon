
$execute store result score #temp rMath run data get storage $(storage) $(nbt)


scoreboard players operation #temp rMath /= #2 rMath
execute store result score #min rMath run data get entity @s data.min
scoreboard players operation #temp rMath > #min rMath

$execute store result storage $(storage) $(nbt) int 1 run scoreboard players get #temp rMath 
