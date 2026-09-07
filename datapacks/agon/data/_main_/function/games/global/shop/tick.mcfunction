
tag @s add shop.owner

data modify storage math:data temp set value {}

scoreboard players operation #search _rin_global_ownerID = @s _rin_global_playerID

execute at @s anchored eyes positioned ^ ^ ^ run tp @e[predicate=_main_:search_owner,tag=shop.private,type=#_main_:display] ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^ run tp @e[predicate=_main_:search_owner,tag=shop.private,type=interaction] ~ ~-0.15 ~

data modify storage math:data temp.dx set from entity @s Rotation[0]
data modify storage math:data temp.x set from entity @e[predicate=_main_:search_owner,tag=shop.private,type=#_main_:display,limit=1] Rotation[0]
data modify storage math:data temp.dx set compute default float {type:"sub",left:{type:"storage",storage:"math:data",path:"temp.dx"},right:{type:"storage",storage:"math:data",path:"temp.x"}}

data modify storage math:data temp.dy set from entity @s Rotation[1]
data modify storage math:data temp.dy set compute default float {type:"mul",inputs:[-0.01745329251,{type:"storage",storage:"math:data",path:"temp.dy"}]}
data modify storage math:data temp.dy set compute default float {type:"div",left:{type:"sin",input:{type:"storage",storage:"math:data",path:"temp.dy"}},right:{type:"cos",input:{type:"storage",storage:"math:data",path:"temp.dy"}}}

execute as @e[predicate=_main_:search_owner,tag=shop.private,type=interaction] run function _main_:games/global/shop/interaction/click

execute as @e[predicate=_main_:search_owner,predicate=_main_:shop/overview,tag=shop.private,type=item_display] run function _main_:games/global/shop/interaction/overview/_

execute as @e[predicate=_main_:search_owner,predicate=!_main_:shop/overview,tag=shop.private,type=item_display] run function _main_:games/global/shop/interaction/overview/reset


tag @s remove shop.owner


