



scoreboard players operation @s teamID = #search teamID

execute if score #search teamID matches 1 run data merge entity @s {item:{id:"red_stained_glass"},Glowing:1b,glow_color_override:14031386}
execute if score #search teamID matches 2 run data merge entity @s {item:{id:"green_stained_glass"},Glowing:1b,glow_color_override:908060}
execute if score #search teamID matches 3 run data merge entity @s {item:{id:"blue_stained_glass"},Glowing:1b,glow_color_override:1214427}
execute if score #search teamID matches 4 run data merge entity @s {item:{id:"yellow_stained_glass"},Glowing:1b,glow_color_override:15122197}


