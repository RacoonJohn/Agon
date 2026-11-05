tag @a[sort=nearest,limit=1] add this

execute if entity @s[tag=spawnPoint] run say test

tp ~ ~ ~
execute store result entity @s Pos[0] double 1 run scoreboard players get #x rMath
execute at @s positioned ~2 ~ ~ if predicate _main_:chance/warn run particle dust{color:10160650,scale:2} ~-1 ~ ~ 0 1.5 1.5 0 2 force @a[tag=this,dx=-100.0]
execute at @s run tag @a[tag=this,tag=!spectate,dx=-100.0] add warn
$execute at @s as @a[tag=this,tag=spectate,dx=-100.0] at @s run tp @s ~$(dx) ~ ~
execute store result entity @s Pos[0] double 1 run scoreboard players get #x2 rMath
execute at @s positioned ~-2 ~ ~ if predicate _main_:chance/warn run particle dust{color:10160650,scale:2} ~2 ~ ~ 0 1.5 1.5 0 2 force @a[tag=this,dx=100.0]
execute at @s run tag @a[tag=this,tag=!spectate,dx=100.0] add warn
$execute at @s as @a[tag=this,tag=spectate,dx=100.0] at @s run tp @s ~-$(dx) ~ ~


tp ~ ~ ~
execute store result entity @s Pos[1] double 1 run scoreboard players get #y rMath
execute at @s positioned ~ ~2 ~ if predicate _main_:chance/warn run particle dust{color:10160650,scale:2} ~ ~-2 ~ 1.5 0 1.5 0 2 force @a[tag=this,dy=-100.0]
execute at @s run tag @a[tag=this,tag=!spectate,dy=-100.0] add warn
$execute at @s as @a[tag=this,tag=spectate,dy=-100.0] at @s run tp @s ~ ~$(dy) ~
execute store result entity @s Pos[1] double 1 run scoreboard players get #y2 rMath
execute at @s positioned ~ ~-2 ~ if predicate _main_:chance/warn run particle dust{color:10160650,scale:2} ~ ~2.5 ~ 1.5 0 1.5 0 2 force @a[tag=this,dy=100.0]
execute at @s run tag @a[tag=this,tag=!spectate,dy=100.0] add warn
$execute at @s as @a[tag=this,tag=spectate,dy=100.0] at @s run tp @s ~ ~-$(dy) ~


tp ~ ~ ~
execute store result entity @s Pos[2] double 1 run scoreboard players get #z rMath
execute at @s positioned ~ ~ ~2 if predicate _main_:chance/warn run particle dust{color:10160650,scale:2} ~ ~ ~-1 1.5 1.5 0 0 2 force @a[tag=this,dz=-100.0]
execute at @s run tag @a[tag=this,tag=!spectate,dz=-100.0] add warn
$execute at @s as @a[tag=this,tag=spectate,dz=-100.0] at @s run tp @s ~ ~ ~$(dz)
execute store result entity @s Pos[2] double 1 run scoreboard players get #z2 rMath
execute at @s positioned ~ ~ ~-2 if predicate _main_:chance/warn run particle dust{color:10160650,scale:2} ~ ~ ~2 1.5 1.5 0 0 2 force @a[tag=this,dz=100.0]
execute at @s run tag @a[tag=this,tag=!spectate,dz=100.0] add warn
$execute at @s as @a[tag=this,tag=spectate,dz=100.0] at @s run tp @s ~ ~ ~-$(dz)




tag @a remove this