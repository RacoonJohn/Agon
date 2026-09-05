
data modify storage _rin_:intern pos set from entity @s Pos
execute store result score #temp3 _rin_protection_origin_X run data get storage _rin_:intern pos[0]
execute store result score #temp3 _rin_protection_origin_Y run data get storage _rin_:intern pos[1]
execute store result score #temp3 _rin_protection_origin_Z run data get storage _rin_:intern pos[2]


execute store result storage _rin_:intern macro.x2 int 1 run scoreboard players operation #temp3 _rin_protection_origin_X -= #temp2 _rin_protection_origin_X
execute store result storage _rin_:intern macro.y2 int 1 run scoreboard players operation #temp3 _rin_protection_origin_Y -= #temp2 _rin_protection_origin_Y
execute store result storage _rin_:intern macro.z2 int 1 run scoreboard players operation #temp3 _rin_protection_origin_Z -= #temp2 _rin_protection_origin_Z


#data modify storage _rin_:intern item set from entity @s Item
function _rin_:sys/protection/item_macro with storage _rin_:intern macro
