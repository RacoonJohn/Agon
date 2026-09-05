tag @s add _rin_sys_this

#$execute positioned ~4 ~4 ~4 as @a[distance=..32] positioned $(x) $(y) $(z) positioned ~$(x2) ~$(y2) ~$(z2) run function _rin_:sys/protection/item_mine
$execute positioned $(x) $(y) $(z) positioned ~$(x2) ~$(y2) ~$(z2) run function _rin_:sys/protection/item_mine



tag @s remove _rin_sys_this
