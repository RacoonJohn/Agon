#exemple

scoreboard players set #delay _rin_global 300
scoreboard players set #date _rin_global 0


data modify storage _rin_:in item set value {id:"chest",count:1}
data modify storage _rin_:in loot set value "minecraft:chests/abandoned_mineshaft"
data modify storage _rin_:in Tags set value ["test","test2"]



function _rin_:api/loot_crate/summon


