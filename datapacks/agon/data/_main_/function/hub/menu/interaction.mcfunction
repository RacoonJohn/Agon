scoreboard players set #click rMath 0

execute on target if entity @s[predicate=_main_:search_id] run scoreboard players set #click rMath 1
execute on attacker if entity @s[predicate=_main_:search_id] run scoreboard players set #click rMath 1


data remove entity @s interaction
data remove entity @s attack