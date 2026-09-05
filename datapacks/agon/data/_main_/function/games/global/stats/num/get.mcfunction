
data modify storage _rin_:in inst set value "stats"
function _rin_:api/player/inst/get

data modify storage math:data temp set from storage _rin_:player this.stats


execute store result score #test rMath run data get storage math:data game_selected.id

execute unless score #test rMath matches 1 run data remove storage math:data temp[{gameID:1}]
execute unless score #test rMath matches 2 run data remove storage math:data temp[{gameID:2}]
execute unless score #test rMath matches 3 run data remove storage math:data temp[{gameID:3}]
execute unless score #test rMath matches 4 run data remove storage math:data temp[{gameID:4}]
execute unless score #test rMath matches 5 run data remove storage math:data temp[{gameID:5}]
execute unless score #test rMath matches 6 run data remove storage math:data temp[{gameID:6}]
execute unless score #test rMath matches 7 run data remove storage math:data temp[{gameID:7}]
execute unless score #test rMath matches 8 run data remove storage math:data temp[{gameID:8}]
execute unless score #test rMath matches 9 run data remove storage math:data temp[{gameID:9}]
execute unless score #test rMath matches 10 run data remove storage math:data temp[{gameID:10}]
execute unless score #test rMath matches 11 run data remove storage math:data temp[{gameID:11}]
execute unless score #test rMath matches 12 run data remove storage math:data temp[{gameID:12}]
execute unless score #test rMath matches 13 run data remove storage math:data temp[{gameID:13}]
execute unless score #test rMath matches 14 run data remove storage math:data temp[{gameID:14}]
execute unless score #test rMath matches 15 run data remove storage math:data temp[{gameID:15}]

