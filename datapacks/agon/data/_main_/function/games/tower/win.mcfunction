function _main_:games/global/preset/get_game
tag @a[predicate=_main_:search_game] add myPlayer



title @a[tag=myPlayer] subtitle [{text:"the game",color:"gold"}]
title @a[tag=myPlayer] title [{nbt:"display.temp",storage:"_rin_:intern",interpret:true},{text:" won",color:"gold"}]


execute as @a[tag=myPlayer,predicate=_main_:search_team] run function _main_:games/global/fx/win_final
execute as @a[tag=myPlayer,predicate=!_main_:search_team] run function _main_:games/global/fx/loose_final


execute as @a[tag=myPlayer] run attribute @s attack_damage modifier add cancel -1 add_multiplied_total

schedule function _main_:games/tower/end 60


tag @a[predicate=_main_:search_game] remove myPlayer


return 1
