
rotate @s ~5 0
rotate @n[tag=rush.indicator,type=item_display] ~5 0


scoreboard players operation #search teamID = @s teamID


data modify storage math:data in.radius set value 1.7f
data modify storage math:data in.height set value 2f
data modify storage math:data in.pos set from entity @s Pos

execute if score #end rMath matches 0 at @s if entity @a[predicate=_main_:search_team,predicate=_main_:inshape/cylinder,distance=..2] run function _main_:games/vertigo/rush/increment

