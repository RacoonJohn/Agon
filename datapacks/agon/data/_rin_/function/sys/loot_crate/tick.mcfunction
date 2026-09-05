

execute if entity @s[tag=_rin_sys_checkDelay] run return run function _rin_:sys/loot_crate/check_delay


execute if predicate _rin_:sys/interact at @s run function _rin_:sys/loot_crate/loot with entity @s data


