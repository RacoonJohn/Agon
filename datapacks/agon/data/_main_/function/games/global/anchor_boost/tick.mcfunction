execute unless predicate _main_:timer_end run return run function _main_:games/global/anchor_boost/remove_attack

execute if entity @s[tag=disable] run function _main_:games/global/anchor_boost/enable

execute if function _main_:games/global/anchor_boost/test run function _main_:games/global/anchor_boost/disable

function _main_:games/global/anchor_boost/remove_attack
