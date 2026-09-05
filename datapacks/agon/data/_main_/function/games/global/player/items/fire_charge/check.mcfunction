

particle ash ~ ~ ~


execute positioned ~-.5 ~-.5 ~-.5 if entity @e[dx=0,type=!#_main_:intangible,predicate=!_main_:search_id] run return 1

execute unless block ^-0.15 ^-0.15 ^ #_main_:air run return 1
execute unless block ^0.15 ^-0.15 ^ #_main_:air run return 1
execute unless block ^-0.15 ^0.15 ^ #_main_:air run return 1
execute unless block ^0.15 ^0.15 ^ #_main_:air run return 1
execute unless block ~ ~ ~ #_main_:air run return 1


