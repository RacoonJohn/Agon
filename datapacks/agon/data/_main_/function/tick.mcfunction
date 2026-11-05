

forceload add 9969 9989 9977 9997
execute positioned 10000.49 -63.00 9993.47 run forceload add ~-2 ~-2 ~2 ~2

#warn-off
execute as @e[type=item] if data entity @s Item.components."minecraft:enchantments"."_main_:undroppable" run function _rin_:sys/item/cant_drop/main


scoreboard players reset @a[tag=spectate] cancel
scoreboard players reset @a[scores={gameID=0}] cancel
scoreboard players enable @a[tag=!spectate,scores={gameID=1..}] cancel


scoreboard players operation gametime.previous rMath = gametime.current rMath

execute store result score gametime.current rMath run stopwatch query time_global 1000

scoreboard players operation gametime.delta rMath = gametime.current rMath
scoreboard players operation gametime.delta rMath -= gametime.previous rMath

scoreboard players operation gametime.delta.tick rMath = gametime.delta rMath
scoreboard players operation gametime.delta.tick rMath *= #20 rMath




execute store result score #gametime rMath run time query gametime

execute store result score #gametime2 rMath run function _main_:games/global/gametime/get_time
scoreboard players operation #gametime2 rMath /= #5 rMath

execute as @e[type=item_display,tag=noMove] at @s run function _main_:games/global/no_move/tick
kill @e[predicate=_main_:timer_end,type=item_display,tag=noMove]

execute if entity @a[scores={gameID=0}] run function _main_:hub/tick

execute if entity @a[scores={gameID=1}] run function _main_:games/bridge/tick
execute if entity @a[scores={gameID=2}] run function _main_:games/block_fight/tick
execute if entity @a[scores={gameID=3}] run function _main_:games/fall_tag/tick
execute if entity @a[scores={gameID=4}] run function _main_:games/fbg/tick
execute if entity @a[scores={gameID=5}] run function _main_:games/fireball_dodge/tick
execute if entity @a[scores={gameID=6}] run function _main_:games/pvpkit/tick
execute if entity @a[scores={gameID=7}] run function _main_:games/tower/tick
execute if entity @a[scores={gameID=8}] run function _main_:games/vertigo/tick
execute if entity @a[scores={gameID=9}] run function _main_:games/lava_floor/tick

execute as @a[scores={death_detection=1..}] at @s run function _main_:games/global/player/hit_match/dying

execute as @a run function _main_:games/global/player/tick


execute as @e[type=item_display,tag=jumpPad] at @s run function _main_:games/global/jump_pad/tick

execute as @e[type=item_display,tag=boostPad] at @s run function _main_:games/global/boost_pad/tick

execute as @e[type=item_display,tag=fireball] at @s run function _main_:games/global/player/items/fire_charge/tick

execute as @e[type=interaction,tag=anchorBoost] at @s run function _main_:games/global/anchor_boost/tick

execute as @e[type=marker,tag=elevator.up] at @s run function _main_:games/global/elevator/tick_up
execute as @e[type=marker,tag=elevator.down] at @s run function _main_:games/global/elevator/tick_down


#execute as @a[tag=inMenu,predicate=_main_:move] run function _main_:menu/close


execute as @e[type=item_frame,tag=cubeSpawner.shield] at @s run function _main_:games/global/cubes/shield/init
execute as @e[type=item_frame,tag=cube.shield] at @s run function _main_:games/global/cubes/shield/tick

execute as @e[type=marker,tag=smoke,predicate=!buttons:have_vehicle] at @s run function _main_:games/global/projectile/smoke/explode
execute as @e[type=marker,tag=grenade,predicate=!buttons:have_vehicle] at @s run function _main_:games/global/projectile/grenade/explode

kill @e[type=block_display,tag=boxHelp,tag=_rin_sys_cloned]


scoreboard players set #temp rMath -180
execute as @e[type=item_display,tag=temp_wools,predicate=_main_:timer/add] run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "1"
scoreboard players set #temp rMath -160
execute as @e[type=item_display,tag=temp_wools,predicate=_main_:timer/add] run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "2"
scoreboard players set #temp rMath -140
execute as @e[type=item_display,tag=temp_wools,predicate=_main_:timer/add] run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "3"
scoreboard players set #temp rMath -120
execute as @e[type=item_display,tag=temp_wools,predicate=_main_:timer/add] run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "4"
scoreboard players set #temp rMath -100
execute as @e[type=item_display,tag=temp_wools,predicate=_main_:timer/add] run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "5"
scoreboard players set #temp rMath -80
execute as @e[type=item_display,tag=temp_wools,predicate=_main_:timer/add] run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "6"
scoreboard players set #temp rMath -60
execute as @e[type=item_display,tag=temp_wools,predicate=_main_:timer/add] run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "7"
scoreboard players set #temp rMath -40
execute as @e[type=item_display,tag=temp_wools,predicate=_main_:timer/add] run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "8"
scoreboard players set #temp rMath -20
execute as @e[type=item_display,tag=temp_wools,predicate=_main_:timer/add] run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "9"


execute at @e[type=item_display,tag=temp_wools,predicate=_main_:timer_end] run fill ~ ~ ~ ~ ~ ~ air replace #wool
kill @e[type=item_display,tag=temp_wools,predicate=!_main_:in_wool]


advancement revoke @a only _main_:stepping_on/any

scoreboard players reset @a jump
tag @a remove warn

