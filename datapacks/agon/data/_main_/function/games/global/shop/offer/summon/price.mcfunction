
function _main_:games/global/shop/offer/summon/init

data modify storage math:data text set value [{storage:"math:data",nbt:"in.name",interpret:true,shadow_color:-1486527131},"\n",{text:"",color:"gold"},{text:"G",color:"gold"}]
data modify storage math:data text[2].text set string storage math:data in.price
data modify entity @s text set from storage math:data text

execute if data storage math:data in{show_price:false} run data modify entity @s text set value [{storage:"math:data",nbt:"in.name",interpret:true,shadow_color:-1486527131}]



data modify entity @s background set from storage math:data in.background

data modify entity @s transformation.translation[1] set compute default float {type:"sub",left:{type:"mul",inputs:[1f,{type:"storage",storage:"math:data",path:"in.y"}]},right:{type:"mul",inputs:[1,{type:"storage",storage:"math:data",path:"in.scale"}]}}
