
execute store result score #x fptrick_impulse run data get entity @s Motion[0] 10000
execute store result score #z fptrick_impulse run data get entity @s Motion[2] 10000

scoreboard players operation #x fptrick_impulse += #x dapvp.math
scoreboard players operation #z fptrick_impulse += #z dapvp.math

#tellraw @a {score:{name:"#x",objective:"fptrick_impulse"}}
#tellraw @a {score:{name:"#z",objective:"fptrick_impulse"}}

