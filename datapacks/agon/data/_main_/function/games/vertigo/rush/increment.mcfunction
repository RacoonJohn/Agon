
execute if score #search teamID matches 1 run scoreboard players add #vertigo.rush1 rMath 1
execute if score #search teamID matches 2 run scoreboard players add #vertigo.rush2 rMath 1
execute if score #search teamID matches 3 run scoreboard players add #vertigo.rush3 rMath 1
execute if score #search teamID matches 4 run scoreboard players add #vertigo.rush4 rMath 1

function _main_:games/vertigo/rush/update

execute if score #vertigo.rush1 rMath >= #vertigo.rush settings run return run function _main_:games/vertigo/win_round
execute if score #vertigo.rush2 rMath >= #vertigo.rush settings run return run function _main_:games/vertigo/win_round
execute if score #vertigo.rush3 rMath >= #vertigo.rush settings run return run function _main_:games/vertigo/win_round
execute if score #vertigo.rush4 rMath >= #vertigo.rush settings run return run function _main_:games/vertigo/win_round

