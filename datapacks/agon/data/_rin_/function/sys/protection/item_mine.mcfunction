
execute if block ~ ~ ~ #air run return fail

kill @e[type=item,limit=1,tag=_rin_sys_this]

#tellraw @a {nbt:"Item",entity:"@e[type=item,limit=1,tag=_rin_sys_this]"}
#loot replace entity @e[type=item,limit=1,tag=_rin_sys_this] container.0 mine ~ ~ ~
#tellraw @a {nbt:"Item",entity:"@e[type=item,limit=1,tag=_rin_sys_this]"}
#
#execute as @e[type=item,limit=1,tag=_rin_sys_this] unless function _rin_:sys/protection/item_test run kill @s
