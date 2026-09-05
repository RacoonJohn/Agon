

data modify storage main:data menu.dx set value 0.18
data modify storage main:data menu.dx2 set value 0.24

data modify storage main:data in set value {x:-0.42}

data modify storage main:data in merge value {x:-0.42,y:0.6,scale:0.4,type:"text",text:{text:"Armor",bold:true,color:"aqua"},show_name:false,show_price:false}
function _main_:games/global/shop/offer/new

data modify storage main:data in merge value {type:"item",scale:0.25,show_name:true,shpw_price:true}
data modify storage main:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"main:data",path:"in.x"},{type:"mul",inputs:[-0.5,{type:"storage",storage:"main:data",path:"menu.dx"}]}]} 

data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0.4,item:{id:"shield"},name:"Shield Dura 3",price:15,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/utilitary/bat_kb1"}
function _main_:games/global/shop/offer/new
data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0,item:{id:"shield"},name:"Shield Dura 6",price:25,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/utilitary/bat_kb2"}
function _main_:games/global/shop/offer/new
data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:-0.4,item:{id:"shield"},name:"Shield Dura 10",price:40,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/utilitary/miniaturizer"}
function _main_:games/global/shop/offer/new

data modify storage main:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"main:data",path:"in.x"},{type:"storage",storage:"main:data",path:"menu.dx"}]}

data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0.4,item:{id:"diamond_helmet"},name:"Diamond Helmet",price:15,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/armor/diamond_helmet"}
function _main_:games/global/shop/offer/new
data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0,item:{id:"netherite_helmet"},name:"Netherite Helmet",price:25,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/armor/netherite_helmet"}
function _main_:games/global/shop/offer/new



data modify storage main:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"main:data",path:"in.x"},{type:"storage",storage:"main:data",path:"menu.dx2"}]}



data modify storage main:data in merge value {type:"item",scale:0.25,show_name:true,shpw_price:true}

data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0.4,item:{id:"stick",components:{"minecraft:enchantments":{knockback:1}}},name:"Bat Kb I",price:10,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/utilitary/bat_kb1"}
function _main_:games/global/shop/offer/new
data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0,item:{id:"stick",components:{"minecraft:enchantments":{knockback:1}}},name:"Bat Kb II",price:16,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/utilitary/bat_kb2"}
function _main_:games/global/shop/offer/new
data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:-0.4,item:{id:"spyglass"},name:"Miniaturizer",price:10,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/utilitary/miniaturizer"}
function _main_:games/global/shop/offer/new

data modify storage main:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"main:data",path:"in.x"},{type:"storage",storage:"main:data",path:"menu.dx"}]}

data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0.4,item:{id:"tnt"},name:"Grenade",price:12,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/utilitary/grenade"}
function _main_:games/global/shop/offer/new
data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0,item:{id:"light_gray_bundle"},name:"Smoke",price:8,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/utilitary/smoke"}
function _main_:games/global/shop/offer/new
data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:-0.4,item:{id:"splash_potion"},name:"Nausea Potion",price:8,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/utilitary/nausea"}
function _main_:games/global/shop/offer/new



data modify storage main:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"main:data",path:"in.x"},{type:"storage",storage:"main:data",path:"menu.dx2"}]}



data modify storage main:data in merge value {type:"item",scale:0.25,show_name:true,shpw_price:true}

data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0.4,item:{id:"wooden_sword"},name:"Wooden Sword",price:10,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/weapons/wooden_sword"}
function _main_:games/global/shop/offer/new
data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0,item:{id:"stone_sword"},name:"Stone Sword",price:22,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/weapons/stone_sword"}
function _main_:games/global/shop/offer/new
data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:-0.4,item:{id:"iron_sword"},name:"Iron Sword",price:40,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/weapons/iron_sword"}
function _main_:games/global/shop/offer/new

data modify storage main:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"main:data",path:"in.x"},{type:"storage",storage:"main:data",path:"menu.dx"}]}

data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0.4,item:{id:"bow"},name:"Wooden Sword",price:10,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/weapons/wooden_sword"}
function _main_:games/global/shop/offer/new
data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0,item:{id:"bow",components:{"minecraft:enchantments":{"_main_:switch":1}}},name:"Switch Bow",price:20,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/weapons/switch_bow"}
function _main_:games/global/shop/offer/new
data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:-0.4,item:{id:"arrow"},name:"10 arrows",price:15,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/weapons/arrow"}
function _main_:games/global/shop/offer/new

data modify storage main:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"main:data",path:"in.x"},{type:"storage",storage:"main:data",path:"menu.dx"}]}

data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0.4,item:{id:"crossbow",components:{"minecraft:enchantments":{"_main_:0g":1}}},name:"Wooden Sword",price:25,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/weapons/crossbow_0g"}
function _main_:games/global/shop/offer/new
data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0,item:{id:"crossbow",components:{"minecraft:enchantments":{quick_charge:1}}},name:"Crossbow QC I",price:15,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/weapons/crossbow_qc1"}
function _main_:games/global/shop/offer/new
data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:-0.4,item:{id:"crossbow",components:{"minecraft:enchantments":{quick_charge:3}}},name:"Crossbow QC III",price:20,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/weapons/crossbow_qc3"}
function _main_:games/global/shop/offer/new

data modify storage main:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"main:data",path:"in.x"},{type:"storage",storage:"main:data",path:"menu.dx"}]}

data modify storage main:data in.item set value {}
data modify storage main:data in merge value {y:0,item:{id:"mace"},name:"Mace",price:60,cmd:"loot give @p[tag=shop.owner] loot _main_:vertigo/weapons/mace"}
function _main_:games/global/shop/offer/new

data modify storage main:data in merge value {x:0,y:0.6,scale:0.4,type:"text",text:{text:"Utilitary",bold:true,color:"aqua"},show_name:false,show_price:false}
function _main_:games/global/shop/offer/new

data modify storage main:data in merge value {x:0.52,y:0.6,scale:0.4,type:"text",text:{text:"Weapons",bold:true,color:"aqua"},show_name:false,show_price:false}
function _main_:games/global/shop/offer/new

function _main_:games/global/shop/interaction/enable