
scoreboard players reset @s death

function _main_:games/global/player/tp_spawn

function _main_:games/global/player/effect/main

scoreboard players operation #search teamID = @s teamID

scoreboard players set #temp rMath 10
function _main_:games/block_fight/player/remove_point
