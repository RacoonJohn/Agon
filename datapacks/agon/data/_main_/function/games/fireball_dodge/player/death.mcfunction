
scoreboard players reset @s death

function _main_:games/global/player/tp_spawn

scoreboard players operation #search teamID = @s teamID

function _main_:games/global/player/spectate

execute if score #end rMath matches 0 unless entity @a[tag=myPlayer,tag=!spectate,predicate=_main_:search_team] run function _main_:games/fireball_dodge/win_round
