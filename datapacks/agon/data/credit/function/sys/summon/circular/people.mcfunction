tag @s add credit
tag @s add credit_people


data modify entity @s line_width set value 10000000
data modify entity @s background set value 0
data modify entity @s brightness set value {block:15,sky:15}

data modify entity @s text set from storage credit:main credit[0].people[0]

data modify entity @s transformation.left_rotation set value [0,1,0,0]
data modify entity @s transformation.scale[0] set from storage credit:main settings.people
data modify entity @s transformation.scale[1] set from storage credit:main settings.people

data modify entity @s transformation.translation[2] set from storage credit:main settings.radius
execute store result entity @s transformation.translation[1] float -0.001 run scoreboard players get #dx rMath


execute store result entity @s teleport_duration int 1 run scoreboard players get #delay rMath
scoreboard players operation @s delay = #delay rMath
scoreboard players set @s date 0


function credit:sys/tick/circular/rotate
