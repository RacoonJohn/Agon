ride @e[limit=1,sort=nearest,distance=..1,tag=_rin_sys_this] mount @s
data modify storage _rin_:intern macro.id set from entity @s Passengers[0].id

kill @s
