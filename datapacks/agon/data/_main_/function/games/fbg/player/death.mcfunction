

scoreboard players reset @s death

function _main_:games/global/player/spectate


scoreboard players operation #search teamID = @s teamID
execute if entity @a[tag=!spectate,predicate=_main_:search_team] run return fail

execute if score #end rMath matches 0 as @a[tag=!spectate] run function _main_:games/fbg/player/check_win

