
tag @s add shop.overview

data modify entity @s transformation.scale[0] set compute entity @s float {type:"mul",inputs:[0.00012,{type:"from_int",input:{type:"score",score:"shop.s",target:"this"}}]}
data modify entity @s transformation.scale[1] set compute entity @s float {type:"mul",inputs:[0.00012,{type:"from_int",input:{type:"score",score:"shop.s",target:"this"}}]}

execute if score #click rMath matches 1 run function _main_:games/global/shop/interaction/overview/click
