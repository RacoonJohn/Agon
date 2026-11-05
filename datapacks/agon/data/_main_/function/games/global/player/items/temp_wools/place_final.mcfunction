
summon item_display ~.5 ~.5 ~.5 {Tags:["temp_wools"],item:{id:"barrier",components:{item_model:"pvp:destroy_stage",custom_model_data:{strings:["0"]}}},brightness:{block:15,sky:15},transformation:{scale:[1.01,1.01,1.01],translation:[0,0,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]}}



scoreboard players operation #date rMath = #gametime rMath
scoreboard players add #date rMath 200
execute as @e[type=item_display,tag=temp_wools] unless score @s date matches 1.. run scoreboard players operation @s date = #date rMath
