function _rin_:api/player/inst/get


data remove storage _rin_:player this.inv.Inventory
data remove storage _rin_:player this.inv.equipment
data remove storage _rin_:player this.inv.EnderItems

data modify storage _rin_:player this.inv.Inventory set from entity @s Inventory
data modify storage _rin_:player this.inv.equipment set from entity @s equipment
data modify storage _rin_:player this.inv.EnderItems set from entity @s EnderItems


function _rin_:api/player/inst/set

tag @s remove spawned
