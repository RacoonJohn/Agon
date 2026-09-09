
data modify storage math:data in.rotation set from entity @s Rotation 
execute store result score #x fptrick_impulse run compute default integer {"type":"from_float",input:{type:"mul",inputs:[10000,"_main_:geometry/unit_x"]}}
execute store result score #y fptrick_impulse run compute default integer {"type":"from_float",input:{type:"mul",inputs:[13000,"_main_:geometry/unit_y"]}}
execute store result score #z fptrick_impulse run compute default integer {"type":"from_float",input:{type:"mul",inputs:[10000,"_main_:geometry/unit_z"]}}

scoreboard players set #dy rMath 0
execute if predicate _main_:input/jump store result score #dy rMath run data get entity @s Motion[1] -10000
scoreboard players operation $y fptrick_impulse += #dy rMath


function fptrick_impulse:launch_global

return 1
