
execute store result score #test rMath run data get storage math:data effects_selected.id


#tellraw @a {score:{name:"#test",objective:"rMath"}}

execute if score #test rMath matches -1 run data modify storage math:data preset_selected.effects.pool.united set from storage math:data effects_selected

execute if score #test rMath matches 0 run data modify storage math:data preset_selected.effects.pool.team[0] set from storage math:data effects_selected
execute if score #test rMath matches 1 run data modify storage math:data preset_selected.effects.pool.team[1] set from storage math:data effects_selected
execute if score #test rMath matches 2 run data modify storage math:data preset_selected.effects.pool.team[2] set from storage math:data effects_selected
execute if score #test rMath matches 3 run data modify storage math:data preset_selected.effects.pool.team[3] set from storage math:data effects_selected


