
item modify entity @s container.1 {type:"sequence",functions:[{type:"set_components",components:{max_stack_size:99}},{type:"set_item",item:"flow_banner_pattern"}]}
$item modify entity @s container.1 {type:"sequence",functions:[{type:"set_components",components:{"!banner_patterns":{},"!provides_banner_patterns":{},custom_data:{_rin_:{cant_drop:true},original:$(original)}}}]}
$item modify entity @s container.1 {type:"set_components",components:{"!banner_patterns":{},"!provides_banner_patterns":{},"!consumable":{},item_name:{translate:"$(type).minecraft.$(id)"},item_model:"$(item_model)"}}
