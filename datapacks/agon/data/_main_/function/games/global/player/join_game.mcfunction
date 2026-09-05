 data modify storage _rin_:in inst set value "lobby"
function _main_:games/global/player/inst/save
tp @s 978 -50 1010
function _main_:games/global/player/spectate
scoreboard players operation @s gameCount = #count gameCount
scoreboard players operation @s gameID = @a[scores={gameID=1..},limit=1] gameID

