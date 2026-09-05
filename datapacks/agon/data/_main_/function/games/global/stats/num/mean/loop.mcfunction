execute unless data storage math:data temp2[0] run return fail




execute store result score #kill rMath run data get storage math:data temp2[0].tot.kill
execute store result score #death rMath run data get storage math:data temp2[0].tot.death
execute store result score #hit rMath run data get storage math:data temp2[0].tot.hit
execute store result score #hurt rMath run data get storage math:data temp2[0].tot.hurt

scoreboard players operation #kill.mean rMath += #kill rMath
scoreboard players operation #death.mean rMath += #death rMath
scoreboard players operation #hit.mean rMath += #hit rMath
scoreboard players operation #hurt.mean rMath += #hurt rMath







data remove storage math:data temp2[0]

function _main_:games/global/stats/num/mean/loop

