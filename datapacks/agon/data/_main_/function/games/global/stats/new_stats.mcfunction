

data modify storage math:data inst set from storage _rin_:in inst

data modify storage _rin_:in inst set value "stats"
function _rin_:api/player/inst/get

data modify storage _rin_:player this.current_game set value {gameID:0,rounds:[]}
execute store result storage _rin_:player this.current_game.gameID int 1 run scoreboard players get @s gameID

function _rin_:api/player/inst/set


data modify storage _rin_:in inst set from storage math:data inst


scoreboard players set @s stats.round.hit 0
scoreboard players set @s stats.round.hurt 0
scoreboard players set @s stats.round.kill 0
scoreboard players set @s stats.round.death 0
scoreboard players set @s stats.game.hit 0
scoreboard players set @s stats.game.hurt 0
scoreboard players set @s stats.game.kill 0
scoreboard players set @s stats.game.death 0
