

gamerule keep_inventory false

function _main_:games/global/game_count/game

function _main_:games/global/map/set


function _main_:games/tower/reset_map

function _main_:games/tower/zone
function _rin_:api/protection/kill_from_origin
function _rin_:api/protection/clone


#execute positioned 1021 -54 1030 summon marker run function _main_:games/block_fight/init/5fprot/r0
#execute positioned 975 -54 1030 summon marker run function _main_:games/block_fight/init/5fprot/b0

function _main_:games/global/preset/get
execute as @a[scores={gameID=0,teamID=1..}] run function _main_:games/tower/init/main

execute as @a[scores={teamID=-1}] run function _main_:games/global/player/spectate
execute as @a[tag=spectate] run spectate @r[tag=!spectate]
scoreboard players operation @a[tag=spectate] gameID = #search gameID



scoreboard players set #timer rMath 100
execute as @a[tag=!spectate] at @s run function _main_:games/global/no_move/set


scoreboard players set #r points 0
scoreboard players set #g points 0
scoreboard players set #b points 0
scoreboard players set #p points 0


data modify storage _rin_:intern display.temp set value {text:"TOWER",bold:true,color:"primary"}
function _rin_:sys/style/change_color
scoreboard objectives modify board displayname {storage:"_rin_:intern",nbt:"display.temp",interpret:true}

scoreboard objectives setdisplay sidebar board
scoreboard players set #end rMath 0

function _main_:games/global/gametime/reset
function _main_:games/global/gametime/pause
function _main_:games/global/timer/organize
