tag @s add victim
tag @s add explosed


execute store result storage math:data macro.x float 0.1 run scoreboard players get #count1 rMath
execute if score #damage rMath matches 0 if entity @n[tag=explosion.owner] run data modify storage math:data macro.x set value 0.00001f
execute if score #damage rMath matches 0 unless entity @n[tag=explosion.owner] run data modify storage math:data macro.x set value 0f

function _main_:games/global/explosion/damage_macro with storage math:data macro
