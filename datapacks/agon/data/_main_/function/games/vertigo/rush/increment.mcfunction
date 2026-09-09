
execute if score #search teamID matches 1 store result bossbar global1 value run scoreboard players add #vertigo.rush1 rMath 1
execute if score #search teamID matches 2 store result bossbar global2 value run scoreboard players add #vertigo.rush2 rMath 1
execute if score #search teamID matches 3 store result bossbar global3 value run scoreboard players add #vertigo.rush3 rMath 1
execute if score #search teamID matches 4 store result bossbar global4 value run scoreboard players add #vertigo.rush4 rMath 1


execute if score #vertigo.rush1 rMath >= #vertigo.rush settings run return run function _main_:games/vertigo/win_round
execute if score #vertigo.rush2 rMath >= #vertigo.rush settings run return run function _main_:games/vertigo/win_round
execute if score #vertigo.rush3 rMath >= #vertigo.rush settings run return run function _main_:games/vertigo/win_round
execute if score #vertigo.rush4 rMath >= #vertigo.rush settings run return run function _main_:games/vertigo/win_round

