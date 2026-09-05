

data modify storage math:data inst set from storage _rin_:in inst

data modify storage _rin_:in inst set value "stats"
function _rin_:api/player/inst/get

data modify storage _rin_:player this.current_game.rounds append value {}
execute store result storage _rin_:player this.current_game.rounds[-1].hit int 1 run scoreboard players get @s stats.round.hit
execute store result storage _rin_:player this.current_game.rounds[-1].hurt int 1 run scoreboard players get @s stats.round.hurt
execute store result storage _rin_:player this.current_game.rounds[-1].kill int 1 run scoreboard players get @s stats.round.kill
execute store result storage _rin_:player this.current_game.rounds[-1].death int 1 run scoreboard players get @s stats.round.death

function _rin_:api/player/inst/set


data modify storage _rin_:in inst set from storage math:data inst


scoreboard players operation @s stats.game.hit += @s stats.round.hit
scoreboard players operation @s stats.game.hurt += @s stats.round.hurt
scoreboard players operation @s stats.game.kill += @s stats.round.kill
scoreboard players operation @s stats.game.death += @s stats.round.death

scoreboard players set @s stats.round.hit 0
scoreboard players set @s stats.round.hurt 0
scoreboard players set @s stats.round.kill 0
scoreboard players set @s stats.round.death 0

