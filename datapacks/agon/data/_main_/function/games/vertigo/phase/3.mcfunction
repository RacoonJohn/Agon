



execute as @a run function _main_:games/global/player/inventory/unfreeze

execute as @a run function _main_:games/vertigo/player/respawn

scoreboard players set @a vertigo.objective 0


bossbar set global0 visible false

scoreboard players set #phase rMath 3

schedule function _main_:games/global/gametime/resume 60t append