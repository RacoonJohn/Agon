
$execute if score @s vertigo.role matches $(id) run return run tellraw @s {text:"You'r already this role",color:"red"}
$scoreboard players set @s vertigo.role $(id)


function _main_:games/vertigo/player/role/get/role

data modify storage math:data display set value [{text:"",color:"gray"},{text:"You'r now ",color:gold},{text:"{name}",color:gold},"\n",]
data modify storage math:data display[-2].text set from storage math:data my_role.name

execute if data storage math:data my_role.objectives[0] run data modify storage math:data display append value "-"
data modify storage math:data in.objective set from storage math:data my_role.objectives[0]
execute if data storage math:data my_role.objectives[0] run function _main_:games/vertigo/player/role/get/objective_display with storage math:data in.objective
execute if data storage math:data my_role.objectives[0] run data modify storage math:data display append value "\n"

execute if data storage math:data my_role.objectives[1] run data modify storage math:data display append value "-"
data modify storage math:data in.objective set from storage math:data my_role.objectives[1]
execute if data storage math:data my_role.objectives[1] run function _main_:games/vertigo/player/role/get/objective_display with storage math:data in.objective
execute if data storage math:data my_role.objectives[1] run data modify storage math:data display append value "\n"

execute if data storage math:data my_role.objectives[2] run data modify storage math:data display append value "-"
data modify storage math:data in.objective set from storage math:data my_role.objectives[2]
execute if data storage math:data my_role.objectives[2] run function _main_:games/vertigo/player/role/get/objective_display with storage math:data in.objective
execute if data storage math:data my_role.objectives[2] run data modify storage math:data display append value "\n"

execute if data storage math:data my_role.objectives[3] run data modify storage math:data display append value "-"
data modify storage math:data in.objective set from storage math:data my_role.objectives[3]
execute if data storage math:data my_role.objectives[3] run function _main_:games/vertigo/player/role/get/objective_display with storage math:data in.objective
execute if data storage math:data my_role.objectives[3] run data modify storage math:data display append value "\n"

execute if data storage math:data my_role.objectives[4] run data modify storage math:data display append value "-"
data modify storage math:data in.objective set from storage math:data my_role.objectives[4]
execute if data storage math:data my_role.objectives[4] run function _main_:games/vertigo/player/role/get/objective_display with storage math:data in.objective
execute if data storage math:data my_role.objectives[4] run data modify storage math:data display append value "\n"

execute if data storage math:data my_role.objectives[5] run data modify storage math:data display append value "-"
data modify storage math:data in.objective set from storage math:data my_role.objectives[5]
execute if data storage math:data my_role.objectives[5] run function _main_:games/vertigo/player/role/get/objective_display with storage math:data in.objective
execute if data storage math:data my_role.objectives[5] run data modify storage math:data display append value "\n"

execute if data storage math:data my_role.objectives[6] run data modify storage math:data display append value "-"
data modify storage math:data in.objective set from storage math:data my_role.objectives[6]
execute if data storage math:data my_role.objectives[6] run function _main_:games/vertigo/player/role/get/objective_display with storage math:data in.objective
execute if data storage math:data my_role.objectives[6] run data modify storage math:data display append value "\n"

execute if data storage math:data my_role.objectives[7] run data modify storage math:data display append value "-"
data modify storage math:data in.objective set from storage math:data my_role.objectives[7]
execute if data storage math:data my_role.objectives[7] run function _main_:games/vertigo/player/role/get/objective_display with storage math:data in.objective
execute if data storage math:data my_role.objectives[7] run data modify storage math:data display append value "\n"

tellraw @p[tag=shop.owner] {storage:"math:data",nbt:"display",interpret:true}



