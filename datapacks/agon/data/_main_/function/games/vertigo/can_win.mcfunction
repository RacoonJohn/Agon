
execute if score #search teamID matches 1 run data modify storage _rin_:intern display.temp set value {text:"Red",color:"r"}
execute if score #search teamID matches 2 run data modify storage _rin_:intern display.temp set value {text:"Green",color:"g"}
execute if score #search teamID matches 3 run data modify storage _rin_:intern display.temp set value {text:"Blue",color:"b"}
execute if score #search teamID matches 4 run data modify storage _rin_:intern display.temp set value {text:"Yellow",color:"p"}
function _rin_:sys/style/change_color

title @a[tag=myPlayer] times 5 20 5
title @a[tag=myPlayer] subtitle ""
title @a[tag=myPlayer] title [{nbt:"display.temp",storage:"_rin_:intern",interpret:true},{text:" RUSH",color:"gold"}]



execute at @n[predicate=_main_:search_game,predicate=_main_:search_team,tag=_rin_sys_cloned,tag=spawn,tag=vertigo.b,type=marker] \
    positioned ~-4 ~ ~-4 as @e[predicate=_main_:search_game,tag=vertigo.rush,sort=random,tag=_rin_sys_cloned,scores={teamID=0},limit=1,type=item_display] unless entity @s[dx=16,dy=100,dz=16] run function _main_:games/vertigo/rush/edit

execute if score #search teamID matches 1 run bossbar set global1 visible true
execute if score #search teamID matches 2 run bossbar set global2 visible true
execute if score #search teamID matches 3 run bossbar set global3 visible true
execute if score #search teamID matches 4 run bossbar set global4 visible true


