
bossbar set global0 color purple
bossbar set global0 name [{text:"Choose a role",color:"dark_purple"}]
bossbar set global0 players @a
bossbar set global0 visible true
bossbar set global0 style progress

scoreboard players set #bossbar.global0.max rMath 45000
execute store result bossbar global0 max run scoreboard players get #bossbar.global0.max rMath
execute store result bossbar global0 value run scoreboard players get #bossbar.global0.max rMath
scoreboard players operation #bossbar.global0.date rMath = gametime.current rMath


scoreboard players set #phase rMath 0

tag @a remove vertigo.complete
tag @a remove vertigo.objective.kill
tag @a remove vertigo.objective.kill_melee
tag @a remove vertigo.objective.kill_range

scoreboard players set @a vertigo.objective 0
scoreboard players set @a vertigo.completion 0
scoreboard players set @a vertigo.in_anchor 0

execute as @a[tag=!spectate] run function _main_:games/vertigo/player/choose_role

clear @a

loot replace entity @a armor.chest loot _main_:armor/chestplate/leather
loot replace entity @a armor.legs loot _main_:armor/leggings/leather
loot replace entity @a armor.feet loot _main_:armor/boots/leather


execute as @a[predicate=_main_:search_game] run function _main_:games/global/no_move/remove

scoreboard players set #search teamID 1
execute as @a[predicate=_main_:search_team,predicate=_main_:search_game] run function _main_:games/vertigo/player/tell_gold
scoreboard players set #search teamID 2
execute as @a[predicate=_main_:search_team,predicate=_main_:search_game] run function _main_:games/vertigo/player/tell_gold
scoreboard players set #search teamID 3
execute as @a[predicate=_main_:search_team,predicate=_main_:search_game] run function _main_:games/vertigo/player/tell_gold
scoreboard players set #search teamID 4
execute as @a[predicate=_main_:search_team,predicate=_main_:search_game] run function _main_:games/vertigo/player/tell_gold


scoreboard players set @e[type=item_display,tag=vertigo.rush] teamID 0

item replace entity @e[type=item_display,tag=vertigo.rush] container.0 with air

scoreboard players set #vertigo.rush1 rMath 0
scoreboard players set #vertigo.rush2 rMath 0
scoreboard players set #vertigo.rush3 rMath 0
scoreboard players set #vertigo.rush4 rMath 0

bossbar set global1 value 0
bossbar set global2 value 0
bossbar set global3 value 0
bossbar set global4 value 0
bossbar set global1 visible false
bossbar set global2 visible false
bossbar set global3 visible false
bossbar set global4 visible false

function _main_:games/global/gametime/pause


