
data modify storage math:data in.rotation set from entity @s Rotation 
execute store result score #x fptrick_impulse run compute default float {type:"mul",inputs:[1000,"_main_:geometry/unit_x"]}
execute store result score #z fptrick_impulse run compute default float {type:"mul",inputs:[1000,"_main_:geometry/unit_z"]}


scoreboard players set #y fptrick_impulse 13200
execute if score #search gameID matches 8 run scoreboard players set #y fptrick_impulse 9000


scoreboard players set #dy rMath 0
execute store result score #dy rMath run data get entity @s Motion[1] -10000

scoreboard players operation #y fptrick_impulse += #dy rMath

function fptrick_impulse:launch_global



#execute if score #big rMath matches 1 run attribute @s safe_fall_distance modifier add jump_pad 30 add_value
execute if score #search gameID matches 8 run attribute @s safe_fall_distance modifier add jump_pad 5 add_value
attribute @s safe_fall_distance modifier add jump_pad 11 add_value

tag @s add jumpPaded



scoreboard players set @s jump 1
