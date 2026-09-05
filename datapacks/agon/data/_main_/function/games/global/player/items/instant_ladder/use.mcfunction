advancement revoke @s only _main_:use/instant_ladder

tag @s add this

execute at @s as @e[tag=instant_ladder,tag=new,type=item_frame] positioned as @s run function _main_:games/global/player/items/instant_ladder/place

tag @s remove this

