

execute store result score #time temp_attributes.main run data get storage temp_attributes: data.attributes[-1].time

execute if score #gametime temp_attributes.main > #time temp_attributes.main run function temp_attributes:player/recurse/remove with storage temp_attributes: data.attributes[-1]

execute unless score #gametime temp_attributes.main > #time temp_attributes.main run data modify storage temp_attributes: attributes append from storage temp_attributes: data.attributes[-1]
data remove storage temp_attributes: data.attributes[-1]
execute if data storage temp_attributes: data.attributes[-1] run function temp_attributes:player/recurse/__main__

