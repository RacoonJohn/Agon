
tag @s remove shop.overview

data modify entity @s transformation.scale[0] set compute entity @s float {type:"mul",inputs:[0.0001,{type:"from_int",input:{type:"score",score:"shop.s",target:"this"}}]}
data modify entity @s transformation.scale[1] set compute entity @s float {type:"mul",inputs:[0.0001,{type:"from_int",input:{type:"score",score:"shop.s",target:"this"}}]}

