data modify storage math:data temp2 set from storage math:data temp


scoreboard players set #kill.u rMath 0
scoreboard players set #death.u rMath 0
scoreboard players set #hit.u rMath 0
scoreboard players set #hurt.u rMath 0
execute store result score #games rMath run data get storage math:data temp2

scoreboard players operation #games rMath /= #2 rMath

function _main_:games/global/stats/num/incertitude/loop

scoreboard players operation Math.In0 rMath = #kill.u rMath
execute store result score #kill.u rMath run function math:function/sqrt
scoreboard players operation Math.In0 rMath = #death.u rMath
execute store result score #death.u rMath run function math:function/sqrt
scoreboard players operation Math.In0 rMath = #hit.u rMath
execute store result score #hit.u rMath run function math:function/sqrt
scoreboard players operation Math.In0 rMath = #hurt.u rMath
execute store result score #hurt.u rMath run function math:function/sqrt


scoreboard players operation #kill.u rMath *= #100 rMath
scoreboard players operation #death.u rMath *= #100 rMath
scoreboard players operation #hit.u rMath *= #100 rMath
scoreboard players operation #hurt.u rMath *= #100 rMath

scoreboard players operation #kill.u rMath /= #games rMath
scoreboard players operation #death.u rMath /= #games rMath
scoreboard players operation #hit.u rMath /= #games rMath
scoreboard players operation #hurt.u rMath /= #games rMath

scoreboard players operation #kill.u.d rMath = #kill.u rMath
scoreboard players operation #death.u.d rMath = #death.u rMath
scoreboard players operation #hit.u.d rMath = #hit.u rMath
scoreboard players operation #hurt.u.d rMath = #hurt.u rMath

scoreboard players operation #kill.u.d rMath %= #100 rMath
scoreboard players operation #death.u.d rMath %= #100 rMath
scoreboard players operation #hit.u.d rMath %= #100 rMath
scoreboard players operation #hurt.u.d rMath %= #100 rMath

scoreboard players operation #kill.u rMath /= #100 rMath
scoreboard players operation #death.u rMath /= #100 rMath
scoreboard players operation #hit.u rMath /= #100 rMath
scoreboard players operation #hurt.u rMath /= #100 rMath

