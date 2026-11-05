advancement revoke @s only _main_:stepping_on/magma_block


execute if score @s gameID matches 9 run return run function _main_:games/lava_floor/player/damage
