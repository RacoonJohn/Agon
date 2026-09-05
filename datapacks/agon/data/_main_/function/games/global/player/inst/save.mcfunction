
function _rin_:api/player/inst/get

data modify storage _rin_:player this.data set value {}
data modify storage _rin_:player this.data.Pos set from entity @s Pos
data modify storage _rin_:player this.data.Rotation set from entity @s Rotation
data modify storage _rin_:player this.data.Dimension set from entity @s Dimension
data modify storage _rin_:player this.data.respawn set from entity @s respawn
data modify storage _rin_:player this.data.Inventory set from entity @s Inventory
data modify storage _rin_:player this.data.equipment set from entity @s equipment
data modify storage _rin_:player this.data.EnderItems set from entity @s EnderItems
data modify storage _rin_:player this.data.playerGameType set from entity @s playerGameType


function _rin_:sys/inst/player/set with storage _rin_:in
