
function _main_:games/global/preset/get_game


function _main_:games/global/game_count/game

scoreboard players set #end rMath 0


function _main_:games/global/map/set

function _main_:games/fall_tag/reset_map


function _main_:games/fall_tag/zone
function _rin_:api/protection/kill_from_origin
function _rin_:api/protection/clone

#execute positioned 968 -58 1000 summon marker run function _main_:games/fall_tag/init/3fprot


function _main_:games/global/preset/get
execute as @a[scores={gameID=0,teamID=1..}] run function _main_:games/fall_tag/init/main

execute as @a[scores={teamID=-1}] run function _main_:games/global/player/spectate
execute as @a[tag=spectate] run spectate @r[tag=!spectate]
scoreboard players operation @a[tag=spectate] gameID = #search gameID


#scoreboard players operation #fall_tagTimer rMath = #gametime rMath
#scoreboard players operation #fall_tagTimer rMath += #fall_tagTimer settings
#scoreboard players add #fall_tagTimer rMath 101

scoreboard players set #r points 0
scoreboard players set #b points 0


data modify storage _rin_:intern display.temp set value {text:"FALL TAG",bold:true,color:"primary"}
function _rin_:sys/style/change_color
scoreboard objectives modify board displayname {storage:"_rin_:intern",nbt:"display.temp",interpret:true}

scoreboard objectives setdisplay sidebar board



function _main_:games/global/gametime/reset
function _main_:games/global/gametime/pause
function _main_:games/global/timer/organize
