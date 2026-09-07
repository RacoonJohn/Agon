

data modify storage math:data menu.dx set value 0.18
data modify storage math:data menu.dx2 set value 0.24

data modify storage math:data in set value {x:-0.42,background:0}

data modify storage math:data in merge value {x:-0.42,y:0.6,scale:0.4,Tags:["vertigo.shop"],type:"text",text:{text:"Armor",bold:true,color:"dark_purple"},show_name:false,show_price:false}
function _main_:games/global/shop/offer/new

data modify storage math:data in merge value {type:"item",scale:0.25,show_name:true,show_price:true}
data modify storage math:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"math:data",path:"in.x"},{type:"mul",inputs:[-0.5,{type:"storage",storage:"math:data",path:"menu.dx"}]}]} 

data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0.4,item:{id:"shield"},name:"Shield Dura 3",count:1,price:15,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/armor/shield_3',type:'give @s'}"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0,item:{id:"shield"},name:"Shield Dura 6",count:1,price:25,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/armor/shield_6',type:'give @s'}"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:-0.4,item:{id:"shield"},name:"Shield Dura 10",count:1,price:40,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/armor/shield_10',type:'give @s'}"}
function _main_:games/global/shop/offer/new

data modify storage math:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"math:data",path:"in.x"},{type:"storage",storage:"math:data",path:"menu.dx"}]}

data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0.4,item:{id:"diamond_helmet"},name:"Diamond Helmet",count:1,price:15,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/armor/diamond_helmet',type:'replace entity @s armor.head'}"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0,item:{id:"netherite_helmet"},name:"Netherite Helmet",count:1,price:25,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/armor/netherite_helmet',type:'replace entity @s armor.head'}"}
function _main_:games/global/shop/offer/new



data modify storage math:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"math:data",path:"in.x"},{type:"storage",storage:"math:data",path:"menu.dx2"}]}



data modify storage math:data in merge value {type:"item",scale:0.25,show_name:true,shpw_price:true}

data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0.4,item:{id:"stick",components:{"minecraft:enchantments":{knockback:1}}},name:"Bat Kb I",count:1,price:10,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/utilitary/bat_kb1',type:'give @s'}"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0,item:{id:"stick",components:{"minecraft:enchantments":{knockback:1}}},name:"Bat Kb II",count:1,price:16,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/utilitary/bat_kb2',type:'give @s'}"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:-0.4,item:{id:"spyglass"},name:"Miniaturizer",count:3,price:10,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/utilitary/miniaturizer',type:'give @s'}"}
function _main_:games/global/shop/offer/new

data modify storage math:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"math:data",path:"in.x"},{type:"storage",storage:"math:data",path:"menu.dx"}]}

data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0.4,item:{id:"tnt"},name:"Grenade",count:3,price:12,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/utilitary/grenade',type:'give @s'}"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0,item:{id:"light_gray_bundle"},count:3,name:"Smoke",price:8,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/utilitary/smoke',type:'give @s'}"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:-0.4,item:{id:"splash_potion",components:{"potion_contents": {"custom_effects": [{"id": "nausea","amplifier": 0,"duration": 60}],"custom_name": "Nausea","custom_color": 1346062}}},count:3,name:"Nausea Potion",price:8,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/utilitary/nausea',type:'give @s'}"}
function _main_:games/global/shop/offer/new



data modify storage math:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"math:data",path:"in.x"},{type:"storage",storage:"math:data",path:"menu.dx2"}]}



data modify storage math:data in merge value {type:"item",scale:0.25,show_name:true,shpw_price:true}

data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0.4,item:{id:"wooden_sword"},name:"Wooden Sword",count:1,price:10,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/weapons/wooden_sword',type:'give @s'}"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0,item:{id:"stone_sword"},name:"Stone Sword",count:1,price:22,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/weapons/stone_sword',type:'give @s'}"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:-0.4,item:{id:"iron_sword"},name:"Iron Sword",count:1,price:40,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/weapons/iron_sword',type:'give @s'}"}
function _main_:games/global/shop/offer/new

data modify storage math:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"math:data",path:"in.x"},{type:"storage",storage:"math:data",path:"menu.dx"}]}

data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0.4,item:{id:"bow"},name:"Bow",count:1,price:10,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/weapons/bow',type:'give @s'}"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0,item:{id:"bow",components:{"minecraft:enchantments":{"_main_:switch":1}}},name:"Switch Bow",count:1,price:20,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/weapons/switch_bow',type:'give @s'}"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:-0.4,item:{id:"arrow"},name:"10 arrows",count:3,price:15,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/weapons/arrow',type:'give @s'}"}
function _main_:games/global/shop/offer/new

data modify storage math:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"math:data",path:"in.x"},{type:"storage",storage:"math:data",path:"menu.dx"}]}

data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0.4,item:{id:"crossbow",components:{"minecraft:enchantments":{"_main_:0g":1}}},name:"Wooden Sword",count:1,price:25,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/weapons/crossbow_0g',type:'give @s'}"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0,item:{id:"crossbow",components:{"minecraft:enchantments":{quick_charge:1}}},name:"Crossbow QC I",count:1,price:15,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/weapons/crossbow_qc1',type:'give @s'}"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:-0.4,item:{id:"crossbow",components:{"minecraft:enchantments":{quick_charge:3}}},name:"Crossbow QC III",count:1,price:20,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/weapons/crossbow_qc3',type:'give @s'}"}
function _main_:games/global/shop/offer/new

data modify storage math:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"math:data",path:"in.x"},{type:"storage",storage:"math:data",path:"menu.dx"}]}

data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0,item:{id:"mace"},name:"Mace",count:1,price:60,cmd:"execute as @p[tag=shop.owner] run function _main_:games/vertigo/player/get_item {loot:'_main_:vertigo/weapons/mace',type:'give @s'}"}
function _main_:games/global/shop/offer/new

data modify storage math:data in merge value {x:0,y:0.6,scale:0.4,type:"text",text:{text:"Utilitary",bold:true,color:"dark_purple"},show_name:false,show_price:false}
function _main_:games/global/shop/offer/new

data modify storage math:data in merge value {x:0.52,y:0.6,scale:0.4,type:"text",text:{text:"Weapons",bold:true,color:"dark_purple"},show_name:false,show_price:false}
function _main_:games/global/shop/offer/new

function _main_:games/global/shop/interaction/enable