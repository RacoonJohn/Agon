
scoreboard objectives add math dummy
scoreboard players set #256 math 256
scoreboard players set #100 math 100
scoreboard players set #2 math 2
execute store result score #r math run function placed_block:get_dist
execute store result score #l math run attribute @s scale get 162.5

tellraw @a {score:{name:"#r",objective:"math"}}
tellraw @a {score:{name:"#l",objective:"math"}}

scoreboard players set #x math 0
scoreboard players operation #x math -= #l math
scoreboard players operation #x math *= #100 math
scoreboard players operation #l math *= #l math
scoreboard players operation #r math *= #r math
scoreboard players operation #x math += #l math
scoreboard players operation #x math += #r math


tellraw @a {score:{name:"#x",objective:"math"}}

scoreboard players operation Math.temp1 math = #x math
scoreboard players operation Math.temp2 math = #x math
scoreboard players operation Math.temp2 math /= #256 math



scoreboard players operation Math.temp0 math = Math.temp1 math
scoreboard players operation Math.temp0 math /= Math.temp2 math
scoreboard players operation Math.temp2 math += Math.temp0 math
scoreboard players operation Math.temp2 math /= #2 math

scoreboard players operation Math.temp0 math = Math.temp1 math
scoreboard players operation Math.temp0 math /= Math.temp2 math
scoreboard players operation Math.temp2 math += Math.temp0 math
scoreboard players operation Math.temp2 math /= #2 math

scoreboard players operation Math.temp0 math = Math.temp1 math
scoreboard players operation Math.temp0 math /= Math.temp2 math
scoreboard players operation Math.temp2 math += Math.temp0 math
scoreboard players operation Math.temp2 math /= #2 math

scoreboard players operation Math.temp0 math = Math.temp1 math
scoreboard players operation Math.temp0 math /= Math.temp2 math
scoreboard players operation Math.temp2 math += Math.temp0 math
scoreboard players operation Math.temp2 math /= #2 math

scoreboard players operation Math.temp0 math = Math.temp1 math
scoreboard players operation Math.temp0 math /= Math.temp2 math
scoreboard players operation Math.temp2 math += Math.temp0 math
scoreboard players operation Math.temp2 math /= #2 math

scoreboard players operation Math.temp0 math = Math.temp1 math
scoreboard players operation Math.temp0 math /= Math.temp2 math
scoreboard players operation Math.temp2 math += Math.temp0 math
scoreboard players operation Math.temp2 math /= #2 math

scoreboard players operation Math.temp0 math = Math.temp1 math
scoreboard players operation Math.temp0 math /= Math.temp2 math
scoreboard players operation Math.temp2 math += Math.temp0 math
scoreboard players operation Math.temp2 math /= #2 math

scoreboard players operation Math.temp0 math = Math.temp1 math
scoreboard players operation Math.temp0 math /= Math.temp2 math
scoreboard players operation Math.temp2 math += Math.temp0 math
scoreboard players operation Math.temp2 math /= #2 math

scoreboard players operation Math.temp0 math = Math.temp1 math
scoreboard players operation Math.temp0 math /= Math.temp2 math
scoreboard players operation Math.temp2 math += Math.temp0 math
scoreboard players operation Math.temp2 math /= #2 math

scoreboard players operation Math.temp0 math = Math.temp1 math
scoreboard players operation Math.temp0 math /= Math.temp2 math
scoreboard players operation Math.temp2 math += Math.temp0 math
scoreboard players operation Math.temp2 math /= #2 math

tellraw @a {score:{name:"Math.temp2",objective:"math"}}

execute store result storage placed_block:macro r double 0.01 run scoreboard players get Math.temp2 math

function placed_block:macro with storage placed_block:macro

advancement revoke @s only placed_block:placed_block

