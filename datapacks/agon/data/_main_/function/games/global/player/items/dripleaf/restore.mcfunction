
execute if items entity @s weapon.mainhand *[custom_data~{item:"hover_dripleaf"}] run return run item modify entity @s weapon.mainhand {function:"set_damage",damage:0}
execute if items entity @s weapon.offhand *[custom_data~{item:"hover_dripleaf"}] run return run item modify entity @s weapon.offhand {function:"set_damage",damage:0}
