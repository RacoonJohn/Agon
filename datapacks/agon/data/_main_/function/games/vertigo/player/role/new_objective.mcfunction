
scoreboard players add @s vertigo.objective 1
scoreboard players set @s vertigo.completion 0


scoreboard players operation @s shop.points += #vertigo.objective.point settings

function _main_:games/vertigo/player/show_gold