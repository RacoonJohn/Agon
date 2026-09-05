
scoreboard players reset @s death
function _main_:games/fall_tag/player/tp_spawn
function _main_:games/global/player/effect/main

function _main_:games/global/player/inventory/load

scoreboard players operation #search teamID = @s teamID

execute unless score @s teamID matches 3 run return fail

function _main_:games/global/player/spectate

execute if score #end rMath matches 0 unless entity @a[tag=myPlayer,tag=!spectate,predicate=_main_:search_team] run function _main_:games/fall_tag/win_round


