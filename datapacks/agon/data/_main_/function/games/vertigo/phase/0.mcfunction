
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


function _main_:games/global/gametime/pause