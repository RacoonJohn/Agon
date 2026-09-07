scoreboard players set #end rMath 1

schedule function _main_:games/global/stats/append_all 2t append

function _main_:games/global/preset/get_game
tag @a[predicate=_main_:search_game] add myPlayer



function _main_:games/global/game_count/round

execute if score #search teamID matches 1 run data modify storage main str set value {text:"Red",color:"red"}
execute if score #search teamID matches 2 run data modify storage main str set value {text:"Green",color:"green"}
execute if score #search teamID matches 3 run data modify storage main str set value {text:"Blue",color:"blue"}
execute if score #search teamID matches 4 run data modify storage main str set value {text:"Yellow",color:"light_purple"}


execute if score #search teamID matches 1 run scoreboard players add #r points 1
execute if score #search teamID matches 2 run scoreboard players add #g points 1
execute if score #search teamID matches 3 run scoreboard players add #b points 1
execute if score #search teamID matches 4 run scoreboard players add #p points 1


function _main_:games/global/gametime/pause

scoreboard players operation #limit rMath = #vertigoBo settings

execute if score #r points >= #limit rMath run return run function _main_:games/vertigo/win
execute if score #g points >= #limit rMath run return run function _main_:games/vertigo/win
execute if score #b points >= #limit rMath run return run function _main_:games/vertigo/win
execute if score #p points >= #limit rMath run return run function _main_:games/vertigo/win



title @a[tag=myPlayer] subtitle [{text:"the round",color:"gold"}]
title @a[tag=myPlayer] title [{nbt:"str",storage:"main",interpret:true},{text:" won",color:"gold"}]



execute as @a[tag=myPlayer,predicate=_main_:search_team] at @s run function _main_:games/global/fx/win
execute as @a[tag=myPlayer,predicate=!_main_:search_team] at @s run function _main_:games/global/fx/loose

scoreboard players operation @a[tag=myPlayer,predicate=!_main_:search_team] shop.points += #vertigo.loose.point settings

execute as @a[tag=myPlayer] run attribute @s attack_damage modifier add cancel -1 add_multiplied_total

schedule function _main_:games/global/gametime/resume 121t append
schedule function _main_:games/vertigo/new_round 20t



tag @a[tag=myPlayer] remove myPlayer



return 1

