
scoreboard players operation #search _rin_global_ownerID = @s _rin_global_playerID



particle flash{color:1180309003} ^ ^ ^1

summon item_display ~ ~ ~ {item:{id:"fire_charge",count:1},teleport_duration:2,Tags:["fireball","new"],Passengers:[{id:"interaction",Tags:["interact_far"],width:0.7,height:0.35},{id:"interaction",Tags:["interact_far"],width:0.7,height:-0.35}]}

execute as @e[type=item_display,tag=new,tag=fireball] run function _main_:games/global/player/items/fire_charge/summon

