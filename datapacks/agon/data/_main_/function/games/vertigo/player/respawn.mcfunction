

scoreboard players operation #search teamID = @s teamID
execute if score @s vertigo.start matches 0 at @n[predicate=_main_:search_game,predicate=_main_:search_team,tag=spawn,tag=vertigo.b,tag=_rin_sys_cloned] run tp @s ~ ~ ~ ~ ~
execute if score @s vertigo.start matches 1 at @n[predicate=_main_:search_game,predicate=_main_:search_team,tag=spawn,tag=vertigo.a,tag=_rin_sys_cloned] run tp @s ~ ~ ~ ~ ~


execute at @s run spawnpoint @s ~ ~ ~ ~ ~



function _main_:games/global/player/effect/main

function _main_:games/global/player/state/reset_saturation
function _main_:games/global/player/state/reset_health

function _main_:games/global/player/reset_attribute

scoreboard players set #timer rMath 60
execute at @s run function _main_:games/global/no_move/set
scoreboard players set @s invulnerability_ticks 80


execute store result score #test rMath run clear @s #arrows 0

execute if items entity @s container.* bow if score #test rMath matches ..5 run give @s arrow[custom_data={"_rin_":{"cant_drop":true}}] 5
execute if items entity @s container.* crossbow if score #test rMath matches ..5 run give @s arrow[custom_data={"_rin_":{"cant_drop":true}}] 5
execute if items entity @s weapon.offhand bow if score #test rMath matches ..5 run give @s arrow[custom_data={"_rin_":{"cant_drop":true}}] 5
execute if items entity @s weapon.offhand crossbow if score #test rMath matches ..5 run give @s arrow[custom_data={"_rin_":{"cant_drop":true}}] 5


#function _main_:games/global/player/inventory/load

