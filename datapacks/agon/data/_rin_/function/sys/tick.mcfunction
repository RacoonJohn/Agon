forceload add -1 -1 1 1
execute positioned 10000000 200 -2355936 run forceload add ~-1 ~-1 ~1 ~1

#data modify storage _rin_:in inst set value "test0"
#execute as @a run function _rin_:api/player/inst/load_data


execute store result score #gametime _rin_global run time query gametime
scoreboard players operation #gt10 _rin_global = #gametime _rin_global
scoreboard players operation #gt10 _rin_global %= #10 _rin_global

#warn-off
execute as @e[type=item] if items entity @s container.0 *[custom_data~{_rin_:{cant_drop:true}}] run function _rin_:sys/item/cant_drop/main

#warn-off
execute as @e[tag=_rin_sys_lootCrate,type=item_display] run function _rin_:sys/loot_crate/tick


tag @e[type=marker,tag=_rin_sys_protection_near_player] remove _rin_sys_protection_near_player
execute as @a at @s positioned ~-4 ~-4 ~-4 run function _rin_:sys/protection/player_near_tag

data modify storage _rin_:intern macro set value {}
#warn-off
execute as @e[tag=_rin_sys_protection_near_player,type=marker] at @s run function _rin_:sys/protection/tick

execute as @a[tag=!_rin_sys_inited] run function _rin_:sys/id/player/init

data modify storage _rin_:intern macro set value {}
