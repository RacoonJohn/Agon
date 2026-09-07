

scoreboard players operation #search teamID = @s teamID
execute if score @s vertigo.start matches 0 at @n[predicate=_main_:search_game,predicate=_main_:search_team,tag=spawn,tag=vertigo.b] run tp @s ~ ~ ~ ~ ~
execute if score @s vertigo.start matches 1 at @n[predicate=_main_:search_game,predicate=_main_:search_team,tag=spawn,tag=vertigo.a] run tp @s ~ ~ ~ ~ ~


execute at @s run spawnpoint @s ~ ~ ~ ~ ~



function _main_:games/global/player/effect/main

function _main_:games/global/player/state/reset_saturation
function _main_:games/global/player/state/reset_health

function _main_:games/global/player/reset_attribute

scoreboard players set @s invulnerability_ticks 60


function _main_:games/global/player/inventory/load
