
scoreboard players operation #X0_backup _rin_global = #X0 _rin_global
scoreboard players operation #Y0_backup _rin_global = #Y0 _rin_global
scoreboard players operation #Z0_backup _rin_global = #Z0 _rin_global
scoreboard players operation #X1_backup _rin_global = #X1 _rin_global
scoreboard players operation #Y1_backup _rin_global = #Y1 _rin_global
scoreboard players operation #Z1_backup _rin_global = #Z1 _rin_global
scoreboard players operation #X2_backup _rin_global = #X2 _rin_global
scoreboard players operation #Y2_backup _rin_global = #Y2 _rin_global
scoreboard players operation #Z2_backup _rin_global = #Z2 _rin_global

scoreboard players operation #X0 _rin_global /= #8 _rin_global
scoreboard players operation #Y0 _rin_global /= #8 _rin_global
scoreboard players operation #Z0 _rin_global /= #8 _rin_global
scoreboard players operation #X1 _rin_global /= #8 _rin_global
scoreboard players operation #Y1 _rin_global /= #8 _rin_global
scoreboard players operation #Z1 _rin_global /= #8 _rin_global
scoreboard players operation #X2 _rin_global /= #8 _rin_global
scoreboard players operation #Y2 _rin_global /= #8 _rin_global
scoreboard players operation #Z2 _rin_global /= #8 _rin_global

scoreboard players operation #X0 _rin_global *= #8 _rin_global
scoreboard players operation #Y0 _rin_global *= #8 _rin_global
scoreboard players operation #Z0 _rin_global *= #8 _rin_global
scoreboard players operation #X1 _rin_global *= #8 _rin_global
scoreboard players operation #Y1 _rin_global *= #8 _rin_global
scoreboard players operation #Z1 _rin_global *= #8 _rin_global
scoreboard players operation #X2 _rin_global *= #8 _rin_global
scoreboard players operation #Y2 _rin_global *= #8 _rin_global
scoreboard players operation #Z2 _rin_global *= #8 _rin_global

scoreboard players operation #X1 _rin_global += #8 _rin_global
scoreboard players operation #Y1 _rin_global += #8 _rin_global
scoreboard players operation #Z1 _rin_global += #8 _rin_global

#tellraw @a {score:{name:"#X0",objective:_rin_global}}
#tellraw @a {score:{name:"#Y0",objective:_rin_global}}
#tellraw @a {score:{name:"#Z0",objective:_rin_global}}
#
#tellraw @a {score:{name:"#X2",objective:_rin_global}}
#tellraw @a {score:{name:"#Y2",objective:_rin_global}}
#tellraw @a {score:{name:"#Z2",objective:_rin_global}}

