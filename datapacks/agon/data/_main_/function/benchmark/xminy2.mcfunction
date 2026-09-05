
## evaluate x >= y
# store x in attribute modifier
$item replace entity @s weapon.mainhand with stick[minecraft:attribute_modifiers=[{type:"tempt_range",id:"test",slot:"saddle",operation:"add_value",amount:$(x)d}]]
# compare to y
$return run execute if items entity @s weapon.mainhand stick[minecraft:attribute_modifiers~{modifiers:{contains:[{amount:{min:$(y)d}}]}}]

