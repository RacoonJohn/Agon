
damage @s 100000000 out_of_world


#tellraw @a[tag=myPlayer] [{selector:"@s"},{text:" fell",color:"red"}]
#
#function _main_:games/bridge/player/death
#
#execute at @s run playsound entity.player.death
