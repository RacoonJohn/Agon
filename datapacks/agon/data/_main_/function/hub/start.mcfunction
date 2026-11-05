

scoreboard players operation #search teamID = @r[tag=!spectate,scores={teamID=1..}] teamID
execute unless entity @a[predicate=!_main_:search_team,scores={teamID=1..}] if entity @a[predicate=_main_:search_id,tag=!debug] run return run tellraw @a[predicate=_main_:search_id] {text:"Not enough teams",color:"red"}



title @a subtitle ""
title @a title {text:"STARTING",color:"gold"}


scoreboard players set @a canceled 0 


function _main_:hub/gamerule/reset
function _main_:hub/gamerule/main



data modify storage _rin_:in inst set value "lobby"
execute as @a[scores={gameID=0}] run function _main_:games/global/player/inst/save

function _main_:games/global/preset/get_game

clear @a *[custom_data~{"item":"menu"}]

execute as @a[predicate=_main_:search_game] run function _main_:games/global/no_move/remove
execute as @a run function _main_:games/global/player/state/reset_saturation
execute as @a run function _main_:games/global/player/state/reset_health



scoreboard players set #saveStats rMath 1
execute if score #gameID settings matches 1 run schedule function _main_:games/bridge/start 10 append
execute if score #gameID settings matches 2 run schedule function _main_:games/block_fight/start 10 append
execute if score #gameID settings matches 3 run schedule function _main_:games/fall_tag/start 10 append
execute if score #gameID settings matches 4 run schedule function _main_:games/fbg/start 10 append
execute if score #gameID settings matches 5 run schedule function _main_:games/fireball_dodge/start 10 append
execute if score #gameID settings matches 6 run schedule function _main_:games/pvpkit/start 10 append
execute if score #gameID settings matches 7 run schedule function _main_:games/tower/start 10 append
execute if score #gameID settings matches 8 run schedule function _main_:games/vertigo/start 10 append
execute if score #gameID settings matches 9 run schedule function _main_:games/lava_floor/start 10 append

execute on vehicle run function _main_:hub/menu/buttons/close

 