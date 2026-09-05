## Loot crate spawn a loot from a loot table and take a time to be reopenable 
# summon at the function execution position
#
# scores inputs:
#   #delay _rin_global : time (in tick) after looted the crate to re open it
#   #date _rin_global : gametime (in tick) of the delay start
#
# storage inputs:
#   _rin_:in item : item nbt to display
#   _rin_:in loot : loot table id to drop
#   _rin_:in Tags : additional tags of the entity (array of string)

###########################


summon item_display ~ ~ ~ {Tags:["_rin_sys_lootCrate","_rin_sys_this"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1],translation:[0,0.5,0]},Passengers:[{id:"interaction",response:1b,width:1,height:1},{id:"text_display",background:0,billboard:"vertical",transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1],translation:[0,1.75,0]}}]}

execute as @e[type=item_display,distance=..0.1,tag=_rin_sys_this,tag=_rin_sys_lootCrate] run function _rin_:sys/loot_crate/summon


