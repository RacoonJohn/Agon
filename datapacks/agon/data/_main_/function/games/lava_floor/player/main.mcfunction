

execute if entity @s[tag=touch_lava] run function _main_:games/lava_floor/player/hit_jump


execute if entity @s[tag=!spectate] positioned ~ -64 ~ if entity @s[dy=-10] run function _main_:games/lava_floor/player/kill

#execute if predicate {type:"entity_properties",entity:"this",predicate:{stepping_on:{block:{blocks:"magma_block"}}}} run function _main_:games/lava_floor/player/kill

execute if score @s death matches 1.. run function _main_:games/lava_floor/player/death


effect give @s resistance infinite 255 true
effect give @s saturation infinite 255 true


