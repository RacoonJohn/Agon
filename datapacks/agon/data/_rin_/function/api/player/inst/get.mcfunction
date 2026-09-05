## get a player instance (PI) of an IC
## context: player
#
# storage inputs:
#   _rin_:in inst: IC's name
#
# storage outputs:
#   _rin_:player this: PI
#
# return 1 if the PI exist in the IC

###########################


data modify storage _rin_:player this set value {}

execute store result storage _rin_:in id int 1 run scoreboard players get @s _rin_global_playerID

return run function _rin_:sys/inst/player/get with storage _rin_:in
