



scoreboard players operation @s teamID = #search teamID

execute if score #search teamID matches 1 run data merge entity @s {item:{id:"red_stained_glass"},Glowing:1b,glow_color_override:14031386}
execute if score #search teamID matches 2 run data merge entity @s {item:{id:"green_stained_glass"},Glowing:1b,glow_color_override:908060}
execute if score #search teamID matches 3 run data merge entity @s {item:{id:"blue_stained_glass"},Glowing:1b,glow_color_override:1214427}
execute if score #search teamID matches 4 run data merge entity @s {item:{id:"yellow_stained_glass"},Glowing:1b,glow_color_override:15122197}

execute if score #search teamID matches 1 run summon item_display ~ ~ ~ {Tags:["rush.indicator"],teleport_duration:1,item:{id:"red_stained_glass"},transformation:{scale:[0.5,64,0.5],translation:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
execute if score #search teamID matches 2 run summon item_display ~ ~ ~ {Tags:["rush.indicator"],teleport_duration:1,item:{id:"green_stained_glass"},transformation:{scale:[0.5,64,0.5],translation:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
execute if score #search teamID matches 3 run summon item_display ~ ~ ~ {Tags:["rush.indicator"],teleport_duration:1,item:{id:"blue_stained_glass"},transformation:{scale:[0.5,64,0.5],translation:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
execute if score #search teamID matches 4 run summon item_display ~ ~ ~ {Tags:["rush.indicator"],teleport_duration:1,item:{id:"yellow_stained_glass"},transformation:{scale:[0.5,64,0.5],translation:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}

