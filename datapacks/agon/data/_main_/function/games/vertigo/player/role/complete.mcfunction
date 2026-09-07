
scoreboard players operation @s shop.points += #vertigo.objective.point settings

tag @s add vertigo.complete




data modify storage math:data macro.value set value "false"
function _main_:games/global/player/bossbar/visible with storage math:data macro

tellraw @a [{selector:"@s"},{text:" Complete all his objectives",color:"gold"}]


function _main_:games/vertigo/player/show_gold