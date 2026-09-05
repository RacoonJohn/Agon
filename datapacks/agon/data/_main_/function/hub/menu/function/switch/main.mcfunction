
$execute store result score #test rMath run data get storage $(storage) $(nbt)

scoreboard players add #test rMath 1
scoreboard players operation #test rMath %= #2 rMath

$execute if score #test rMath matches 0 run data modify entity @s text set value [$(label),{text:"✘",color:red}]
$execute if score #test rMath matches 1 run data modify entity @s text set value [$(label),{text:"✔",color:blue}]



$execute store result storage $(storage) $(nbt) byte 1 run scoreboard players get #test rMath
