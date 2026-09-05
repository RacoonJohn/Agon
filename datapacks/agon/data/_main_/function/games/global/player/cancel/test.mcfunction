

execute store result score #test rMath if entity @a[scores={canceled=1}]
execute store result score #test1 rMath if entity @a[tag=!spectate]


scoreboard players operation #test1 rMath /= #2 rMath
scoreboard players add #test1 rMath 1





execute if score #test rMath >= #test1 rMath run return run function _main_:games/global/player/cancel/end


tag @s add this

tellraw @s [{text:"You vote to cancel the game (",color:"gold"},{score:{name:"#test",objective:"rMath"}},"/",{score:{name:"#test1",objective:"rMath"}},")"]
tellraw @a[tag=!this] ["",{selector:"@s"},{text:" vote to cancel the game (",color:"gold"},{score:{name:"#test",objective:"rMath"},color:"gold"},{text:"/",color:"gold"},{score:{name:"#test1",objective:"rMath"},color:"gold"},{text:")",color:"gold"}]

tag @s remove this
