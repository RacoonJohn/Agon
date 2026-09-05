data modify storage math:data inv set value {}

data modify storage math:data inv.Inventory set from entity @s Inventory
data modify storage math:data inv.equipment set from entity @s equipment
data modify storage math:data inv.EnderItems set from entity @s EnderItems
data modify storage math:data inv.inited set value true

#tellraw @a {score:{"name":"#temp",objective:"rMath"}}

execute if score #temp rMath matches 0 run data modify storage _rin_:player this.inv[0] set from storage math:data inv
execute if score #temp rMath matches 1 run data modify storage _rin_:player this.inv[1] set from storage math:data inv
execute if score #temp rMath matches 2 run data modify storage _rin_:player this.inv[2] set from storage math:data inv
execute if score #temp rMath matches 3 run data modify storage _rin_:player this.inv[3] set from storage math:data inv
execute if score #temp rMath matches 4 run data modify storage _rin_:player this.inv[4] set from storage math:data inv
execute if score #temp rMath matches 5 run data modify storage _rin_:player this.inv[5] set from storage math:data inv
execute if score #temp rMath matches 6 run data modify storage _rin_:player this.inv[6] set from storage math:data inv
execute if score #temp rMath matches 7 run data modify storage _rin_:player this.inv[7] set from storage math:data inv

function _rin_:api/player/inst/set

