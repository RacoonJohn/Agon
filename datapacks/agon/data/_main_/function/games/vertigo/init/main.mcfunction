

clear @s

scoreboard players operation @s gameID = #search gameID

function _main_:games/global/player/inventory/get_preset

function _main_:games/global/player/tp_spawn

function _main_:games/global/stats/new_stats

scoreboard players set @s shop.points 30
scoreboard players reset @s vertigo.role

scoreboard players set @a vertigo.start 1

execute store result storage math:data macro.id int 1 run scoreboard players get @s _rin_global_playerID
data modify storage math:data macro.idx set value 0
function _main_:games/global/player/bossbar/create with storage math:data macro
data modify storage math:data macro.value set value 1000
function _main_:games/global/player/bossbar/max with storage math:data macro
data modify storage math:data macro.value set value "progress"
function _main_:games/global/player/bossbar/style with storage math:data macro
data modify storage math:data macro.value set value "purple"
function _main_:games/global/player/bossbar/color with storage math:data macro
data modify storage math:data macro.value set value "false"
function _main_:games/global/player/bossbar/visible with storage math:data macro

summon text_display ~ ~ ~ {billboard:"vertical"}