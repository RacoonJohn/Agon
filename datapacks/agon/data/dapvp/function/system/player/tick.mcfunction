
## APROXIMATION OF IMMEDATE SPEED

data modify storage dapvp:math Pos set from entity @s Pos

    scoreboard players operation #Pos-1 dapvp.PosX = @s dapvp.PosX
    scoreboard players operation #Pos-1 dapvp.PosZ = @s dapvp.PosZ


    execute store result score @s dapvp.PosX run data get storage dapvp:math Pos[0] 1000
    execute store result score @s dapvp.PosZ run data get storage dapvp:math Pos[2] 1000


    scoreboard players operation @s dapvp.MotionX = @s dapvp.PosX
    scoreboard players operation @s dapvp.MotionZ = @s dapvp.PosZ

    scoreboard players operation @s dapvp.MotionX -= #Pos-1 dapvp.PosX
    scoreboard players operation @s dapvp.MotionZ -= #Pos-1 dapvp.PosZ

##################################


attribute @s attack_knockback modifier remove dapvp:speed

execute rotated ~ 0 positioned 0.0 0 0.0 positioned ^ ^ ^1 run function dapvp:system/get_pos

data modify storage dapvp:math macro.l set compute default float {type:"length",inputs:[{type:"mul",inputs:[1e-3,{type:"from_int",input:{type:"score",score:"dapvp.MotionX",target:"this"}}]},{type:"mul",inputs:[1e-3,{type:"from_int",input:{type:"score",score:"dapvp.MotionZ",target:"this"}}]}]}

data modify storage dapvp:math macro.x set compute default float {\
    type:"max",\
    inputs:[\
        {type:"storage",storage:"dapvp:math",path:"kb.min"},\
        {\
            type:"mul",\
            inputs:[\
                {type:"storage",storage:"dapvp:math",path:"kb.mult"},\
                {\
                    type:"add",\
                    inputs:[\
                        {\
                            type:"mul",\
                            inputs:[\
                                1e-3,\
                                {type:"storage",storage:"dapvp:math",path:"Pos[0]"},\
                                {type:"from_int",input:{type:"score",score:"dapvp.MotionX",target:"this"}}\
                            ]\
                        },\
                        {\
                            type:"mul",\
                            inputs:[\
                                1e-3,\
                                {type:"storage",storage:"dapvp:math",path:"Pos[2]"},\
                                {type:"from_int",input:{type:"score",score:"dapvp.MotionZ",target:"this"}}\
                            ]\
                        }\
                    ]\
                },\
            ]\
        }\
    ]\
}

execute if items entity @s weapon.mainhand *[custom_data~{dapvpWPN:true}] run function dapvp:system/player/knockback with storage dapvp:math macro


#attribute @s entity_interaction_range modifier remove dapvp:reach
#execute if items entity @s weapon.mainhand *[custom_data~{nerfReach:true}] run attribute @s entity_interaction_range modifier add dapvp:reach -0.2 add_value


execute if score @s[tag=!dapvp.force_use] dapvp.use matches 0 if items entity @s container.* *[custom_data~{dapvp_consume_temp:true}] run function dapvp:system/player/use/remove_force_use2

tag @s remove dapvp.force_use

execute if score @s dapvp.use matches 0 if score @s dapvp.useTime matches 1.. run scoreboard players set @s dapvp.useTime 0

execute if score @s dapvp.use matches 1.. run scoreboard players remove @s dapvp.use 1



execute if entity @s[tag=dapvp.back_kb] run function dapvp:system/player/back_kb

execute if score @s dapvp.combo.block matches 1.. run function dapvp:system/item/block/combo/test


execute if items entity @s container.* #axes[custom_data~{dapvpWPN:true,toInit:true}] run function dapvp:system/item/axes/generic
execute if items entity @s container.* #swords[custom_data~{dapvpWPN:true,toInit:true}] run function dapvp:system/item/swords/generic


execute if score @s dapvp.boost.speed.date <= #gametime dapvp.math run attribute @s movement_speed modifier remove dapvp:boost
execute if score @s dapvp.boost.armor.date <= #gametime dapvp.math run attribute @s armor modifier remove dapvp:boost




execute if score #gametime dapvp.math = @s dapvp.combo.generic.date run function dapvp:system/item/combo/generics
execute if score #gametime dapvp.math = @s dapvp.combo.change.date run function dapvp:system/item/combo/change


function dapvp:system/item/combo/get_date
execute if score #combo.delay dapvp.math > #swords.combo.delay dapvp.settings run return run function dapvp:system/item/swords/generic
execute if score #combo.delay dapvp.math > #axes.combo.delay dapvp.settings run return run function dapvp:system/item/axes/generic



