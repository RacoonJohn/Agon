
advancement revoke @s only _main_:use/unspawn

execute if entity @s[tag=!spawned] run return fail

tag @s remove spawned

function _main_:games/global/player/load_inventory

execute if items entity @s weapon.mainhand *[custom_data~{unspawn:true}] run item modify entity @s weapon.mainhand _main_:count-1
execute if items entity @s weapon.offhand *[custom_data~{unspawn:true}] run item modify entity @s weapon.offhand _main_:count-1
