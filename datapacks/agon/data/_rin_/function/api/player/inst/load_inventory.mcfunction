## load an inventory (Inventory equipment, EnderItems)
## context: player
#
# storage inputs:
#   _rin_:in inv{Inventory,equipment,EnderItems}
#

###########################


tag @s add _rin_sys_this
execute at @s as 4c6dbac8-fdab-4406-99d4-aa9548172ae0 run function _rin_:sys/inst/player/load_data/inventory
tag @s remove _rin_sys_this

