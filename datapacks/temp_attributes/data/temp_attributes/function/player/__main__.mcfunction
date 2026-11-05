
function temp_attributes:player/data/get with entity @s

execute unless data storage temp_attributes: data.attributes[0] run return run function temp_attributes:player/data/remove

data modify storage temp_attributes: attributes set value []
function temp_attributes:player/recurse/__main__
data modify storage temp_attributes: data.attributes set from storage temp_attributes: attributes

function temp_attributes:player/data/set with entity @s
