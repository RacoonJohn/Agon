

execute if entity @s[tag=spawned,predicate=_main_:move] run tag @s remove spawned
execute if score #gametime.Pause settings matches 0 if entity @s[tag=spawned] run tag @s remove spawned


execute if items entity @s[tag=organize,tag=!spawned] container.* *[custom_data~{original:{}}] run function _main_:games/global/player/inventory/unfreeze
execute if items entity @s[tag=organize,tag=!spawned] weapon.* *[custom_data~{original:{}}] run function _main_:games/global/player/inventory/unfreeze
execute if items entity @s[tag=organize,tag=!spawned] armor.* *[custom_data~{original:{}}] run function _main_:games/global/player/inventory/unfreeze


execute if entity @s[tag=!spawned] if items entity @s hotbar.* *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder
execute if entity @s[tag=!spawned] if items entity @s weapon.* *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder
execute if entity @s[tag=!spawned] if items entity @s armor.* *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder




execute if entity @s[tag=warn] at @s run function _main_:games/global/player/warn/main
execute unless entity @s[tag=warn] run scoreboard players set @s warnTime 0




execute if score @s join_game matches 1.. run function _main_:games/global/player/check_game
