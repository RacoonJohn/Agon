

scoreboard players set #power rMath 30
scoreboard players set #damage rMath 0
scoreboard players set #knockback rMath 1500


tag @e[predicate=_main_:search_id] add explosion.owner

function _main_:games/global/player/items/fire_charge/explode_choice

particle explosion ^ ^ ^-0.5



tp @s ^ ^ ^-0.5

tag @e[predicate=_main_:search_id] remove explosion.owner

function _main_:games/global/player/items/fire_charge/kill
