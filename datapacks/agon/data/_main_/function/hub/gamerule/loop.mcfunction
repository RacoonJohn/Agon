

execute store result score #test rMath run data get storage math:data temp1[0]
execute if score #test rMath matches 0 run data modify storage math:data temp[0].value set value "false"
execute if score #test rMath matches 1 run data modify storage math:data temp[0].value set value "true"


function _main_:hub/gamerule/macro with storage math:data temp[0]


data remove storage math:data temp[0]
data remove storage math:data temp1[0]
execute if data storage math:data temp[0] run function _main_:hub/gamerule/loop