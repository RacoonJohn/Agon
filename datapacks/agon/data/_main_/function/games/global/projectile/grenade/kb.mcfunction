
data modify storage math:data pos set from entity @s Pos

data modify storage math:data pos[0] set compute default float {type:"sub",left:{type:"storage",storage:"math:data",path:"pos[0]"},right:{type:"storage",storage:"math:data",path:"in.pos[0]"}}
data modify storage math:data pos[1] set compute default float {type:"add",inputs:[1,{type:"sub",left:{type:"storage",storage:"math:data",path:"pos[1]"},right:{type:"storage",storage:"math:data",path:"in.pos[1]"}}]}
data modify storage math:data pos[2] set compute default float {type:"sub",left:{type:"storage",storage:"math:data",path:"pos[2]"},right:{type:"storage",storage:"math:data",path:"in.pos[2]"}}

data modify storage math:data ctx.l set compute default float {type:"length",inputs:[{type:"storage",storage:"math:data",path:"pos[0]"},{type:"storage",storage:"math:data",path:"pos[1]"},{type:"storage",storage:"math:data",path:"pos[2]"}]}

data modify storage math:data pos[0] set compute default float {type:"mul",inputs:[0.9,{type:"div",left:{type:"storage",storage:"math:data",path:"pos[0]"},right:{type:"storage",storage:"math:data",path:"ctx.l"}}]}
data modify storage math:data pos[1] set compute default float {type:"mul",inputs:[0.9,{type:"div",left:{type:"storage",storage:"math:data",path:"pos[1]"},right:{type:"storage",storage:"math:data",path:"ctx.l"}}]}
data modify storage math:data pos[2] set compute default float {type:"mul",inputs:[0.9,{type:"div",left:{type:"storage",storage:"math:data",path:"pos[2]"},right:{type:"storage",storage:"math:data",path:"ctx.l"}}]}

execute if entity @s[type=!player] run return run data modify entity @s Motion set from storage math:data pos

execute store result score #x fptrick_impulse run data get storage math:data pos[0] 10000
execute store result score #y fptrick_impulse run data get storage math:data pos[1] 10000
execute store result score #z fptrick_impulse run data get storage math:data pos[2] 10000

function fptrick_impulse:launch_global

