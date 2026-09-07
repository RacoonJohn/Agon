

data modify entity @s Items set from storage _rin_:in inv.Inventory

item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] container.* from entity @s container.*


data remove storage _rin_:intern items
data remove storage _rin_:intern equipment

data modify storage _rin_:intern items set from storage _rin_:in inv.Inventory
data modify storage _rin_:intern equipment set from storage _rin_:in inv.equipment

execute if data storage _rin_:intern items[{Slot:0b}] run data remove storage _rin_:intern items[{Slot:0b}]
execute if data storage _rin_:intern items[{Slot:1b}] run data remove storage _rin_:intern items[{Slot:1b}]
execute if data storage _rin_:intern items[{Slot:2b}] run data remove storage _rin_:intern items[{Slot:2b}]
execute if data storage _rin_:intern items[{Slot:3b}] run data remove storage _rin_:intern items[{Slot:3b}]
execute if data storage _rin_:intern items[{Slot:4b}] run data remove storage _rin_:intern items[{Slot:4b}]
execute if data storage _rin_:intern items[{Slot:5b}] run data remove storage _rin_:intern items[{Slot:5b}]
execute if data storage _rin_:intern items[{Slot:6b}] run data remove storage _rin_:intern items[{Slot:6b}]
execute if data storage _rin_:intern items[{Slot:7b}] run data remove storage _rin_:intern items[{Slot:7b}]
execute if data storage _rin_:intern items[{Slot:8b}] run data remove storage _rin_:intern items[{Slot:8b}]
data modify storage _rin_:intern items[{Slot:27b}].Slot set value 0b
data modify storage _rin_:intern items[{Slot:28b}].Slot set value 1b
data modify storage _rin_:intern items[{Slot:29b}].Slot set value 2b
data modify storage _rin_:intern items[{Slot:30b}].Slot set value 3b
data modify storage _rin_:intern items[{Slot:31b}].Slot set value 4b
data modify storage _rin_:intern items[{Slot:32b}].Slot set value 5b
data modify storage _rin_:intern items[{Slot:33b}].Slot set value 6b
data modify storage _rin_:intern items[{Slot:34b}].Slot set value 7b
data modify storage _rin_:intern items[{Slot:35b}].Slot set value 8b

data modify storage _rin_:intern equipment.head.Slot set value 9b
data modify storage _rin_:intern equipment.chest.Slot set value 10b
data modify storage _rin_:intern equipment.legs.Slot set value 11b
data modify storage _rin_:intern equipment.feet.Slot set value 12b
data modify storage _rin_:intern equipment.offhand.Slot set value 13b
data modify storage _rin_:intern equipment.saddle.Slot set value 14b
data modify storage _rin_:intern equipment.body.Slot set value 15b

data remove storage _rin_:intern items[{Slot:9b}]
data remove storage _rin_:intern items[{Slot:10b}]
data remove storage _rin_:intern items[{Slot:11b}]
data remove storage _rin_:intern items[{Slot:12b}]
data remove storage _rin_:intern items[{Slot:13b}]
data remove storage _rin_:intern items[{Slot:14b}]
data remove storage _rin_:intern items[{Slot:15b}]

data modify storage _rin_:intern items append from storage _rin_:intern equipment.head
data modify storage _rin_:intern items append from storage _rin_:intern equipment.chest
data modify storage _rin_:intern items append from storage _rin_:intern equipment.legs
data modify storage _rin_:intern items append from storage _rin_:intern equipment.feet
data modify storage _rin_:intern items append from storage _rin_:intern equipment.offhand
data modify storage _rin_:intern items append from storage _rin_:intern equipment.saddle
data modify storage _rin_:intern items append from storage _rin_:intern equipment.body


data modify entity @s Items set from storage _rin_:intern items


item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] container.27 from entity @s container.0
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] container.28 from entity @s container.1
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] container.29 from entity @s container.2
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] container.30 from entity @s container.3
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] container.31 from entity @s container.4
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] container.32 from entity @s container.5
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] container.33 from entity @s container.6
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] container.34 from entity @s container.7
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] container.35 from entity @s container.8
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] armor.head from entity @s container.9
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] armor.chest from entity @s container.10
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] armor.legs from entity @s container.11
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] armor.feet from entity @s container.12
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] weapon.offhand from entity @s container.13
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] saddle from entity @s container.14
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] armor.body from entity @s container.15



data modify entity @s Items set from storage _rin_:in inv.EnderItems
item replace entity @a[tag=_rin_sys_this,limit=1,distance=..1] enderchest.* from entity @s container.*

