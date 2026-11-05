tellraw @a [{text:"Game Canceled",color:"gold"}]


scoreboard players set #saveStats rMath 0
execute if entity @a[scores={gameID=1}] run function _main_:games/bridge/end
execute if entity @a[scores={gameID=2}] run function _main_:games/block_fight/end
execute if entity @a[scores={gameID=3}] run function _main_:games/fall_tag/end
execute if entity @a[scores={gameID=4}] run function _main_:games/fbg/end
execute if entity @a[scores={gameID=5}] run function _main_:games/fireball_dodge/end
execute if entity @a[scores={gameID=6}] run function _main_:games/pvpkit/end
execute if entity @a[scores={gameID=7}] run function _main_:games/tower/end
execute if entity @a[scores={gameID=8}] run function _main_:games/vertigo/end
execute if entity @a[scores={gameID=9}] run function _main_:games/lava_floor/end

scoreboard players set @a canceled 0 

