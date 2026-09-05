

scoreboard players operation #search _rin_global_playerID = @s _rin_global_ownerID

tag @s add this
execute on passengers if function _main_:games/global/player/items/fire_charge/interaction run return fail
tag @s remove this

execute if predicate _main_:timer_end run return run function _main_:games/global/player/items/fire_charge/explode

execute positioned ^ ^ ^0.5 if function _main_:games/global/player/items/fire_charge/check run return run function _main_:games/global/player/items/fire_charge/explode
execute positioned ^ ^ ^1 if function _main_:games/global/player/items/fire_charge/check run return run function _main_:games/global/player/items/fire_charge/explode
execute positioned ^ ^ ^1.5 if function _main_:games/global/player/items/fire_charge/check run return run function _main_:games/global/player/items/fire_charge/explode


tp @s ^ ^ ^1.5


