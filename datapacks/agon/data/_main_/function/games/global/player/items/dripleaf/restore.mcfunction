
item modify entity @s weapon.offhand {"type":"filtered",item_filter:{predicates:{custom_data:{item:"hover_dripleaf"}}},on_pass:{type:"set_damage",damage:0.01,add:true}}
item modify entity @s container.* {"type":"filtered",item_filter:{predicates:{custom_data:{item:"hover_dripleaf"}}},on_pass:{type:"set_damage",damage:0.01,add:true}}

