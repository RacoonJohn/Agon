


data modify storage math:data inst set from storage _rin_:in inst

data modify storage _rin_:in inst set value "stats"
function _rin_:api/player/inst/get


execute store result storage _rin_:player this.current_game.tot.hit int 1 run scoreboard players get @s stats.game.hit
execute store result storage _rin_:player this.current_game.tot.hurt int 1 run scoreboard players get @s stats.game.hurt
execute store result storage _rin_:player this.current_game.tot.kill int 1 run scoreboard players get @s stats.game.kill
execute store result storage _rin_:player this.current_game.tot.death int 1 run scoreboard players get @s stats.game.death

data modify storage _rin_:player this.stats append from storage _rin_:player this.current_game
data remove storage _rin_:player this.stats.rounds

execute store result score #test rMath run data get storage _rin_:player this.stats
execute if score #test rMath matches 50.. run data remove storage _rin_:player this.stats[0]

function _rin_:api/player/inst/set


data modify storage _rin_:in inst set from storage math:data inst
