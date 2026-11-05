
function _main_:games/global/game_count/game

function _main_:games/global/map/set

function _main_:games/lava_floor/reset_map

function _main_:games/lava_floor/zone
function _rin_:api/protection/kill_from_origin
function _rin_:api/protection/clone


function _main_:games/global/preset/get
execute as @a[scores={gameID=0,teamID=1..}] run function _main_:games/lava_floor/init/main

execute as @a[scores={teamID=-1}] run function _main_:games/global/player/spectate
execute as @a[tag=spectate] run spectate @r[tag=!spectate]
scoreboard players operation @a[tag=spectate] gameID = #search gameID



scoreboard players set #r points 0
scoreboard players set #g points 0
scoreboard players set #b points 0
scoreboard players set #p points 0


data modify storage _rin_:intern display.temp set value {text:"FLOOR IS LAVA",bold:true,color:"primary"}
function _rin_:sys/style/change_color
scoreboard objectives modify board displayname {storage:"_rin_:intern",nbt:"display.temp",interpret:true}

scoreboard objectives setdisplay sidebar board
scoreboard players set #end rMath 0

function _main_:games/global/gametime/reset
function _main_:games/global/gametime/pause
function _main_:games/global/timer/organize
