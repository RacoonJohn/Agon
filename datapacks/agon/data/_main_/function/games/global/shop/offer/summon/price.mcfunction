
function _main_:games/global/shop/offer/summon/init

data modify storage main:data text set value [{storage:"main:data",nbt:"in.name",interpret:true,shadow_color:-1486527131},"\n",{text:"",color:"gold"},{text:"G",color:"gold"}]
data modify storage main:data text[2].text set string storage main:data in.price
data modify entity @s text set from storage main:data text

execute if data storage main:data in{show_price:false} run data modify entity @s text set value [{storage:"main:data",nbt:"in.name",interpret:true,shadow_color:-1486527131}]



data modify entity @s background set from storage main:data in.background

data modify entity @s transformation.translation[1] set compute default float {type:"sub",left:{type:"mul",inputs:[1f,{type:"storage",storage:"main:data",path:"in.y"}]},right:{type:"mul",inputs:[1,{type:"storage",storage:"main:data",path:"in.scale"}]}}
