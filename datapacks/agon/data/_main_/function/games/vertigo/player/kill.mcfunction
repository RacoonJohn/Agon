

tellraw @a[tag=myPlayer] [{selector:"@s"},{text:" fell",color:"red"}]


scoreboard players set @s death_detection 1

function _main_:games/vertigo/player/respawn

execute at @s run playsound entity.player.big_fall

