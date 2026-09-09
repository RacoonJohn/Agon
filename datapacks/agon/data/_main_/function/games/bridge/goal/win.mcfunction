
title @a[tag=myPlayer] subtitle [{text:"the game",color:"gold"}]
title @a[tag=myPlayer] title [{nbt:"display.temp",storage:"_rin_:intern",interpret:true},{text:" won",color:"gold"}]


execute as @a[tag=myPlayer,predicate=!_main_:search_team] run function _main_:games/global/fx/win_final
execute as @a[tag=myPlayer,predicate=_main_:search_team] run function _main_:games/global/fx/loose_final


schedule function _main_:games/bridge/end 60

