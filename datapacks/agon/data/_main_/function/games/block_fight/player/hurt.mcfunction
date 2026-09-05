advancement revoke @s only _main_:block_fight/hurt

execute unless score @s gameID matches 2 run return fail 

scoreboard players operation #search teamID = @s teamID
execute on attacker if predicate _main_:search_team run return fail

scoreboard players set #temp rMath 1
function _main_:games/block_fight/player/remove_point
