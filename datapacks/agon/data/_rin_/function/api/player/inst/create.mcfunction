## create/reset a player instance (PI) in an IC
## context: player
#
# storage inputs:
#   _rin_:in inst: IC's name
#
#

###########################


execute store result storage _rin_:in id int 1 run scoreboard players get @s _rin_global_playerID

function _rin_:sys/inst/player/create with storage _rin_:in
