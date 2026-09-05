data modify storage math:data temp2 set from storage math:data temp


scoreboard players set #kill.mean rMath 0
scoreboard players set #death.mean rMath 0
scoreboard players set #hit.mean rMath 0
scoreboard players set #hurt.mean rMath 0
execute store result score #games rMath run data get storage math:data temp2


function _main_:games/global/stats/num/mean/loop


scoreboard players operation #kill.mean rMath *= #100 rMath
scoreboard players operation #death.mean rMath *= #100 rMath
scoreboard players operation #hit.mean rMath *= #100 rMath
scoreboard players operation #hurt.mean rMath *= #100 rMath

scoreboard players operation #kill.mean rMath /= #games rMath
scoreboard players operation #death.mean rMath /= #games rMath
scoreboard players operation #hit.mean rMath /= #games rMath
scoreboard players operation #hurt.mean rMath /= #games rMath

scoreboard players operation #kill.mean.d rMath = #kill.mean rMath
scoreboard players operation #death.mean.d rMath = #death.mean rMath
scoreboard players operation #hit.mean.d rMath = #hit.mean rMath
scoreboard players operation #hurt.mean.d rMath = #hurt.mean rMath

scoreboard players operation #kill.mean.d rMath %= #100 rMath
scoreboard players operation #death.mean.d rMath %= #100 rMath
scoreboard players operation #hit.mean.d rMath %= #100 rMath
scoreboard players operation #hurt.mean.d rMath %= #100 rMath

scoreboard players operation #kill.mean rMath /= #100 rMath
scoreboard players operation #death.mean rMath /= #100 rMath
scoreboard players operation #hit.mean rMath /= #100 rMath
scoreboard players operation #hurt.mean rMath /= #100 rMath




