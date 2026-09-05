

execute if predicate dapvp:system/is_player run return run function fptrick_impulse:launch_global


#tellraw @a {score:{name:"#y",objective:"fptrick_impulse"}}
#tellraw @a {nbt:"Motion",entity:"@s"}
#
#execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #x fptrick_impulse
#execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #y fptrick_impulse
#execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #z fptrick_impulse

