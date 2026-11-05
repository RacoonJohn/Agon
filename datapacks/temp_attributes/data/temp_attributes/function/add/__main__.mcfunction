
$data modify storage temp_attributes: in set value {id:"$(id)",type:"$(type)"}

execute store result storage temp_attributes: in.time int 1 run time query gametime
$data modify storage temp_attributes: in.time set compute default integer {type:"add",inputs:[$(time),{type:"storage",storage:"temp_attributes:",path:"in.time"}]}

function temp_attributes:player/data/get with entity @s

execute unless data storage temp_attributes: data.attributes run data modify storage temp_attributes: data.attributes set value []
$execute unless data storage temp_attributes: data.attributes[{id:"$(id)",type:"$(type)"}] run data modify storage temp_attributes: data.attributes append from storage temp_attributes: in
$execute if data storage temp_attributes: data.attributes[{id:"$(id)",type:"$(type)"}] run data modify storage temp_attributes: data.attributes[{id:"$(id)",type:"$(type)"}] set from storage temp_attributes: in

function temp_attributes:player/data/set with entity @s

$attribute @s $(type) modifier add $(id) $(value) $(operation)
