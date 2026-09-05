## save ALL player data in his (PI) in the field data
## context: player
#
# storage inputs:
#   _rin_:in inst : IC's name
#

###########################





function _rin_:api/player/inst/get

data modify storage _rin_:player this.data set from entity @s

function _rin_:sys/inst/player/set with storage _rin_:in
