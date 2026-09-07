

scoreboard players operation #search _rin_global_ownerID = @s _rin_global_playerID

execute at @s as @e[predicate=_main_:search_owner,tag=shop.private,type=#_main_:display] facing 983 0 1015 run rotate @s ~ 0


execute if score #phase rMath matches 1 if entity @e[predicate=_main_:search_owner,tag=shop.private,tag=vertigo.choose_role,type=#_main_:display] run function _main_:games/vertigo/player/phase/1

execute if score #phase rMath matches 2 if entity @e[predicate=_main_:search_owner,tag=shop.private,tag=vertigo.shop,type=#_main_:display] run function _main_:games/vertigo/player/phase/2

execute if score #phase rMath matches 0..2 run function _main_:games/vertigo/player/show_gold

execute if score #phase rMath matches 2 unless score @s vertigo.start matches 0 at @s positioned ~ -64 ~ if entity @s[dy=6] run function _main_:games/vertigo/player/start/0
execute if score #phase rMath matches 2 unless score @s vertigo.start matches 1 at @s positioned ~ -38 ~ if entity @s[dy=6] run function _main_:games/vertigo/player/start/1



execute store result storage math:data macro.id int 1 run scoreboard players get @s _rin_global_playerID
data modify storage math:data macro.idx set value 0
function _main_:games/global/player/bossbar/create with storage math:data macro
data modify storage math:data macro.value set value 1000
function _main_:games/global/player/bossbar/max with storage math:data macro
data modify storage math:data macro.value set value "progress"
function _main_:games/global/player/bossbar/style with storage math:data macro
data modify storage math:data macro.color set value "dark_purple"
function _main_:games/global/player/bossbar/color with storage math:data macro

execute if entity @s[tag=!spectate] positioned ~ -64 ~ if entity @s[dy=-10] run function _main_:games/vertigo/player/kill


execute if function _main_:games/vertigo/player/in_anchor run scoreboard players add @s vertigo.in_anchor 1
execute if score @s vertigo.in_anchor >= #vertigo.keep.point.tick settings run scoreboard players add @s shop.points 1
execute if score @s vertigo.in_anchor >= #vertigo.keep.point.tick settings run scoreboard players set @s vertigo.in_anchor 0



execute if score @s death matches 1.. run function _main_:games/vertigo/player/death


tag @s remove vertigo.objective.kill
tag @s remove vertigo.objective.kill_melee
tag @s remove vertigo.objective.kill_range

execute unless score #phase rMath matches 3 run return fail
execute if entity @s[tag=vertigo.complete] run return fail

execute if score @s vertigo.role matches 1 run function _main_:games/vertigo/player/role/anchor
execute if score @s vertigo.role matches 2 run function _main_:games/vertigo/player/role/anchor_a
execute if score @s vertigo.role matches 3 run function _main_:games/vertigo/player/role/anchor_b
execute if score @s vertigo.role matches 4 run function _main_:games/vertigo/player/role/reaper
execute if score @s vertigo.role matches 5 run function _main_:games/vertigo/player/role/rifler
execute if score @s vertigo.role matches 6 run function _main_:games/vertigo/player/role/warrior
execute if score @s vertigo.role matches 7 run function _main_:games/vertigo/player/role/climber

