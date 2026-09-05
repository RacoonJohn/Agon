## set a player instance (PI) of an IC
## context: player
#
# storage inputs:
#   _rin_:in inst : IC's name
#   _rin_:player this : PI
#

###########################


execute store result storage _rin_:in id int 1 run scoreboard players get @s _rin_global_playerID

function _rin_:sys/inst/player/set with storage _rin_:in
