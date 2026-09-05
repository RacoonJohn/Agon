


execute positioned ~ -64 ~ if entity @s[dy=-10] run function _main_:games/block_fight/player/kill

execute if score @s death matches 1.. run function _main_:games/block_fight/player/death


effect give @s resistance infinite 255 true



scoreboard players set #temp rMath 0
execute unless data entity @s[tag=!spawned] attributes[{"id":"minecraft:max_health",modifiers:[{id:"minecraft:block_fight"}]}] run function _main_:games/block_fight/player/remove_point

execute if score @s health matches 21.. run attribute @s max_health modifier remove block_fight
