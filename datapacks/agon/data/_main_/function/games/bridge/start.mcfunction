
function _main_:games/global/game_count/game


function _main_:games/global/map/set

function _main_:games/bridge/reset_map

scoreboard players set #end rMath 0

function _main_:games/global/preset/get
execute as @a[scores={gameID=0,teamID=1..}] run function _main_:games/bridge/init/main

execute as @a[scores={teamID=-1}] run function _main_:games/global/player/spectate
execute as @a[tag=spectate] run spectate @r[tag=!spectate]
scoreboard players operation @a[tag=spectate] gameID = #search gameID

scoreboard players set #r points 0
scoreboard players set #b points 0

scoreboard players set #timer rMath 100
execute as @a[tag=!spectate] at @s run function _main_:games/global/no_move/set


data modify storage _rin_:intern display.temp set value {text:"BRIDGE",bold:true,color:"primary"}
function _rin_:sys/style/change_color
scoreboard objectives modify board displayname {storage:"_rin_:intern",nbt:"display.temp",interpret:true}

scoreboard objectives setdisplay sidebar board


function _main_:games/global/gametime/reset
function _main_:games/global/gametime/pause
function _main_:games/global/timer/organize
