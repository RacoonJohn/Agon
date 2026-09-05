

tellraw @a[tag=myPlayer] [{selector:"@s"},{text:" fell",color:"red"}]


execute at @s run function _main_:games/global/player/respawn/spread_player_nearest

damage @s 5 outside_border

scoreboard players set @s invulnerability_ticks 80

scoreboard players set #timer rMath 20
execute unless score @s death matches 1.. at @s run function _main_:games/global/no_move/set
effect give @s resistance 2 5 false


execute at @s run playsound entity.player.big_fall
