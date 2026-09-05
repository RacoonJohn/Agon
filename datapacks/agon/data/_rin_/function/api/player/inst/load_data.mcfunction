## load some of player data from his (PI)
## context: player
## (Inventory, EnderChest, equipment, position, dimension, spawnpoint, gamemode)
#
# storage inputs:
#   _rin_:in inst : IC's name
#

###########################



function _rin_:api/player/inst/get




data modify storage _rin_:intern macro set value {}

execute store result storage _rin_:intern macro.x int 1 run data get storage _rin_:player this.data.XpP 8999842

data modify storage _rin_:intern macro.y set from storage _rin_:player this.data.XpLevel
function _rin_:sys/inst/player/load_data/xp with storage _rin_:intern macro

data modify storage _rin_:intern macro.x set from storage _rin_:player this.data.Pos[0]
data modify storage _rin_:intern macro.y set from storage _rin_:player this.data.Pos[1]
data modify storage _rin_:intern macro.z set from storage _rin_:player this.data.Pos[2]
data modify storage _rin_:intern macro.r0 set from storage _rin_:player this.data.Rotation[0]
data modify storage _rin_:intern macro.r1 set from storage _rin_:player this.data.Rotation[1]
data modify storage _rin_:intern macro.d set from storage _rin_:player this.data.Dimension
function _rin_:sys/inst/player/load_data/tp with storage _rin_:intern macro

data modify storage _rin_:intern macro.x set from storage _rin_:player this.data.respawn.pos[0]
data modify storage _rin_:intern macro.y set from storage _rin_:player this.data.respawn.pos[1]
data modify storage _rin_:intern macro.z set from storage _rin_:player this.data.respawn.pos[2]
data modify storage _rin_:intern macro.r0 set from storage _rin_:player this.data.respawn.yaw[0]
data modify storage _rin_:intern macro.r1 set from storage _rin_:player this.data.respawn.pitch[1]
data modify storage _rin_:intern macro.d set from storage _rin_:player this.data.respawn.dimension
function _rin_:sys/inst/player/load_data/respawn with storage _rin_:intern macro


execute store result score #gamemode _rin_global run data get storage _rin_:player this.data.playerGameType

execute if score #gamemode _rin_global matches 1 run gamemode creative
execute if score #gamemode _rin_global matches 0 run gamemode survival
execute if score #gamemode _rin_global matches 2 run gamemode adventure
execute if score #gamemode _rin_global matches 3 run gamemode spectator



data modify storage _rin_:in inv set value {}
data modify storage _rin_:in inv.Inventory set from storage _rin_:player this.data.Inventory
data modify storage _rin_:in inv.EnderItems set from storage _rin_:player this.data.EnderItems
data modify storage _rin_:in inv.equipment set from storage _rin_:player this.data.equipment

function _rin_:api/player/inst/load_inventory


