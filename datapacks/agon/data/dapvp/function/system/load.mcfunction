

execute unless data storage dapvp:math players run data modify storage dapvp:math players set value {}

forceload add -1 -1 1 1

scoreboard objectives add dapvp.settings dummy
    scoreboard players set #swords.canBlock dapvp.settings 0
    scoreboard players set #swords.combo.delay dapvp.settings 13
    scoreboard players set #axes.combo.delay dapvp.settings 20
    scoreboard players set #blocks.combo.delay dapvp.settings 30


scoreboard objectives add dapvp.math dummy
    scoreboard players set #2 dapvp.math 2
    scoreboard players set #3 dapvp.math 3
    scoreboard players set #100 dapvp.math 100
    scoreboard players set #256 dapvp.math 256

scoreboard objectives add dapvp.combo.hit dummy
scoreboard objectives add dapvp.combo.date dummy

scoreboard objectives add dapvp.PosX dummy
scoreboard objectives add dapvp.PosZ dummy
scoreboard objectives add dapvp.MotionX dummy
scoreboard objectives add dapvp.MotionZ dummy

scoreboard objectives add dapvp.combo.block custom:damage_blocked_by_shield

scoreboard objectives add dapvp.combo.generic.date dummy

scoreboard objectives add dapvp.combo.change.id dummy
scoreboard objectives add dapvp.combo.change.date dummy

scoreboard objectives add dapvp.combo.id-1 dummy
scoreboard objectives add dapvp.combo.id-2 dummy
scoreboard objectives add dapvp.combo.id-3 dummy
scoreboard objectives add dapvp.combo.id-4 dummy
scoreboard objectives add dapvp.combo.id-5 dummy
scoreboard objectives add dapvp.combo.id-6 dummy
scoreboard objectives add dapvp.combo.id-7 dummy
scoreboard objectives add dapvp.combo.id-8 dummy
scoreboard objectives add dapvp.combo.id-9 dummy

scoreboard objectives add dapvp.ID dummy
scoreboard objectives add dapvp.ownerID dummy

scoreboard objectives add dapvp.boost.speed.date dummy
scoreboard objectives add dapvp.boost.armor.date dummy

scoreboard objectives add dapvp.isAttacker dummy

#Weapons Id:
#   1: Swords
#   2: Axes
#   3: BlockAttack
#   4:
#   5:
#   6:
#   7:
#   8:
#   9:
#