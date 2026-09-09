execute if score #search teamID matches 1 run team join r
execute if score #search teamID matches 2 run team join g
execute if score #search teamID matches 3 run team join b
execute if score #search teamID matches 4 run team join p
execute if score #search teamID matches -1 run team join s


execute if score #search teamID matches 1 at @s run particle block{block_state:"orange_concrete"} ~ ~1 ~ 0.5 1 0.5 1 25 force
execute if score #search teamID matches 2 at @s run particle block{block_state:"lime_concrete"} ~ ~1 ~ 0.5 1 0.5 1 25 force
execute if score #search teamID matches 3 at @s run particle block{block_state:"light_blue_concrete"} ~ ~1 ~ 0.5 1 0.5 1 25 force
execute if score #search teamID matches 4 at @s run particle block{block_state:"yellow_concrete"} ~ ~1 ~ 0.5 1 0.5 1 25 force
execute if score #search teamID matches -1 at @s run particle block{block_state:"light_gray_concrete"} ~ ~1 ~ 0.5 1 0.5 1 25 force


execute if score #search teamID matches 1 run data modify storage _rin_:intern display.temp set value [{text:"red",color:"r"}]
execute if score #search teamID matches 2 run data modify storage _rin_:intern display.temp set value [{text:"green",color:"g"}]
execute if score #search teamID matches 3 run data modify storage _rin_:intern display.temp set value [{text:"blue",color:"b"}]
execute if score #search teamID matches 4 run data modify storage _rin_:intern display.temp set value [{text:"yellow",color:"p"}]
execute if score #search teamID matches -1 run data modify storage _rin_:intern display.temp set value [{text:"spectator",color:"dark_gray"}]
function _rin_:sys/style/change_color_list

tellraw @s [{text:"you join team ",color:"gray"},{storage:"_rin_:intern",nbt:"display.temp",interpret:true,bold:true,shadow_color:0}]


execute at @s run playsound block.conduit.activate ui @s ~ ~ ~ 0.5 2 0

scoreboard players operation @s teamID = #search teamID
