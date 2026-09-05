
attribute @s gravity modifier add hover_dripleaf -0.8 add_multiplied_total
effect give @s slow_falling 1 0 true

execute if items entity @s weapon.mainhand *[custom_data~{item:"hover_dripleaf"}] run return run item modify entity @s weapon.mainhand {type:"set_damage",damage:-0.1,add:true}
execute if items entity @s weapon.offhand *[custom_data~{item:"hover_dripleaf"}] run return run item modify entity @s weapon.offhand {type:"set_damage",damage:-0.1,add:true}
