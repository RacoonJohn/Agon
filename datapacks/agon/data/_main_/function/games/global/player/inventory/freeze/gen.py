
import os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))


def gen(slot,type):

    if type == "":
        with open(os.path.join(BASE_DIR,f'{slot}.mcfunction'),'w') as f:
            f.write(
'''
item modify entity @s '''+str(slot)+''' {type:"sequence",functions:[{type:"set_components",components:{max_stack_size:99}},{type:"set_item",item:"flow_banner_pattern"}]}
$item modify entity @s '''+str(slot)+''' {type:"sequence",functions:[{type:"set_components",components:{"!banner_patterns":{},"!provides_banner_patterns":{},custom_data:{_rin_:{cant_drop:true},original:$(original)}}}]}
$item modify entity @s '''+str(slot)+''' {type:"set_components",components:{"!banner_patterns":{},"!provides_banner_patterns":{},"!consumable":{},item_model:"$(item_model)"}}
'''
)
        
    else:
        with open(os.path.join(BASE_DIR,f'{slot}.{type}.mcfunction'),'w') as f:
            f.write(
'''
item modify entity @s '''+str(slot)+''' {type:"sequence",functions:[{type:"set_components",components:{max_stack_size:99}},{type:"set_item",item:"flow_banner_pattern"}]}
$item modify entity @s '''+str(slot)+''' {type:"sequence",functions:[{type:"set_components",components:{"!banner_patterns":{},"!provides_banner_patterns":{},custom_data:{_rin_:{cant_drop:true},original:$(original)}}}]}
$item modify entity @s '''+str(slot)+''' {type:"set_components",components:{"!banner_patterns":{},"!provides_banner_patterns":{},"!consumable":{},item_name:{translate:"'''+type+'''.minecraft.$(id)"},item_model:"$(item_model)"}}
'''
)



for type in ["item","","block"]:
    for slot in range(36):
        gen("container."+str(slot),type)
    for slot in ["armor.head","armor.chest","armor.legs","armor.feet","weapon.offhand"]:
        gen(str(slot),type)
        


