
data modify entity @e[tag=fptrick.temp,distance=..0.1,limit=1,type=item_display] item set from storage fptrick:math this[{Slot:36b}].components."minecraft:custom_data".fptrick_original

item replace entity @s container.36 from entity @e[tag=fptrick.temp,distance=..0.1,limit=1,type=item_display] container.0
