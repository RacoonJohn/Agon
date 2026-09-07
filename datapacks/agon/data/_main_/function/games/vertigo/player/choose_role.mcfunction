function _main_:games/global/player/reset_attribute

scoreboard players operation #search teamID = @s teamID
execute at @n[predicate=_main_:search_game,predicate=_main_:search_team,tag=spawnPoint] run tp @s ~ ~ ~ ~ ~
execute at @s run spawnpoint @s ~ ~ ~ ~ ~

execute store result storage math:data macro.id int 1 run scoreboard players get @s _rin_global_playerID
data modify storage math:data macro.idx set value 0
data modify storage math:data macro.value set value "false"
function _main_:games/global/player/bossbar/visible with storage math:data macro

data modify storage math:data menu.dx set value 0.18
data modify storage math:data menu.dx2 set value 0.24

data modify storage math:data in set value {x:0,y:0.6,background:0,Tags:["vertigo.choose_role"],scale:0.4,type:"text",text:{text:"Choose a Role",bold:true,color:"dark_purple"},show_name:false,show_price:false}
function _main_:games/global/shop/offer/new

data modify storage math:data in merge value {x:-0.09}

data modify storage math:data in merge value {type:"item",scale:0.25,show_name:true,show_price:false}
data modify storage math:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"math:data",path:"in.x"},{type:"mul",inputs:[-0.5,{type:"storage",storage:"math:data",path:"menu.dx"}]}]} 

data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0.4,item:{id:"respawn_anchor"},name:[{text:"Anchor",color:"aqua"}],count:100000,price:0,cmd:"function _main_:games/vertigo/player/choose_role/anchor"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0,item:{id:"respawn_anchor"},name:[{text:"A Anchor",color:"aqua"}],count:100000,price:0,cmd:"function _main_:games/vertigo/player/choose_role/anchor_a"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:-0.4,item:{id:"respawn_anchor"},name:[{text:"B Anchor",color:"aqua"}],count:100000,price:0,cmd:"function _main_:games/vertigo/player/choose_role/anchor_b"}
function _main_:games/global/shop/offer/new

data modify storage math:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"math:data",path:"in.x"},{type:"storage",storage:"math:data",path:"menu.dx"}]}

data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0.4,item:{id:"bow"},name:[{text:"Rifler",color:"aqua"}],count:100000,price:0,cmd:"function _main_:games/vertigo/player/choose_role/rifler"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0,item:{id:"iron_axe"},name:[{text:"Reaper",color:"aqua"}],count:100000,price:0,cmd:"function _main_:games/vertigo/player/choose_role/reaper"}
function _main_:games/global/shop/offer/new
data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:-0.4,item:{id:"iron_sword"},name:[{text:"Warrior",color:"aqua"}],count:100000,price:0,cmd:"function _main_:games/vertigo/player/choose_role/warrior"}
function _main_:games/global/shop/offer/new

data modify storage math:data in.x set compute default float {type:"add",inputs:[{type:"storage",storage:"math:data",path:"in.x"},{type:"storage",storage:"math:data",path:"menu.dx"}]}

data modify storage math:data in.item set value {}
data modify storage math:data in merge value {y:0.4,item:{id:"iron_boots"},name:[{text:"Climber",color:"aqua"}],count:100000,price:0,cmd:"function _main_:games/vertigo/player/choose_role/climber"}
function _main_:games/global/shop/offer/new





function _main_:games/global/shop/interaction/enable