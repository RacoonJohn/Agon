


function _main_:games/global/game_count/game

function _main_:games/global/map/set


function _main_:games/vertigo/reset_map

function _main_:games/vertigo/zone
function _rin_:api/protection/kill_from_origin
function _rin_:api/protection/clone


function _main_:games/global/gametime/reset
function _main_:games/global/gametime/pause

function _main_:games/global/preset/get
execute as @a[scores={gameID=0,teamID=1..}] run function _main_:games/vertigo/init/main

execute as @a[scores={teamID=-1}] run function _main_:games/global/player/spectate
execute as @a[tag=spectate] run spectate @r[tag=!spectate]
scoreboard players operation @a[tag=spectate] gameID = #search gameID


bossbar set global1 color red
bossbar set global2 color green
bossbar set global3 color blue
bossbar set global4 color yellow
bossbar set global1 style progress
bossbar set global2 style progress
bossbar set global3 style progress
bossbar set global4 style progress
bossbar set global1 players @a
bossbar set global2 players @a
bossbar set global3 players @a
bossbar set global4 players @a
execute store result bossbar global1 max run scoreboard players get #vertigo.rush settings
execute store result bossbar global2 max run scoreboard players get #vertigo.rush settings
execute store result bossbar global3 max run scoreboard players get #vertigo.rush settings
execute store result bossbar global4 max run scoreboard players get #vertigo.rush settings
bossbar set global1 value 0
bossbar set global2 value 0
bossbar set global3 value 0
bossbar set global4 value 0
bossbar set global1 visible false
bossbar set global2 visible false
bossbar set global3 visible false
bossbar set global4 visible false
bossbar set global1 name {text:"Red Rush",color:"#d61a1a"}
bossbar set global2 name {text:"Green Rush",color:"#0ddb1c"}
bossbar set global3 name {text:"Blue Rush",color:"#1287db"}
bossbar set global4 name {text:"Yellow Rush",color:"#e6bf15"}

function _main_:games/vertigo/phase/0


scoreboard players set #r points 0
scoreboard players set #g points 0
scoreboard players set #b points 0
scoreboard players set #p points 0


data modify storage _rin_:intern display.temp set value {text:"VERTIGO",bold:true,color:"primary"}
function _rin_:sys/style/change_color
scoreboard objectives modify board displayname {storage:"_rin_:intern",nbt:"display.temp",interpret:true}

scoreboard objectives setdisplay sidebar board
scoreboard players set #end rMath 0




#function _main_:games/global/timer/organize
