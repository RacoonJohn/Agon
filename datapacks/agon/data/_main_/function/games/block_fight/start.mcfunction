
function _main_:games/global/game_count/game

function _main_:games/global/map/set

clone 9000 -64 9000 9065 0 9065 968 -64 1000 replace

function _main_:games/block_fight/zone
function _rin_:api/protection/kill_from_origin
function _rin_:api/protection/clone


#execute positioned 1021 -54 1030 summon marker run function _main_:games/block_fight/init/5fprot/r0
#execute positioned 975 -54 1030 summon marker run function _main_:games/block_fight/init/5fprot/b0


function _main_:games/global/preset/get
execute as @a[scores={gameID=0,teamID=1..}] run function _main_:games/block_fight/init/main

execute as @a[scores={teamID=-1}] run function _main_:games/global/player/spectate
execute as @a[tag=spectate] run spectate @r[tag=!spectate]
scoreboard players operation @a[tag=spectate] gameID = #search gameID

scoreboard players operation #r points = #block_fightPoint settings
scoreboard players operation #b points = #block_fightPoint settings

execute store result score #temp rMath if entity @a[scores={teamID=1}]
execute store result score #temp1 rMath if entity @a[scores={teamID=3}]

scoreboard players operation #temp rMath > #temp1 rMath

scoreboard players operation #r points *= #temp rMath
scoreboard players operation #b points *= #temp rMath



scoreboard players set #timer rMath 100
execute as @a[tag=!spectate] at @s run function _main_:games/global/no_move/set


data modify storage _rin_:intern display.temp set value {text:"BLOCK FIGHT",bold:true,color:"primary"}
function _rin_:sys/style/change_color
scoreboard objectives modify board displayname {storage:"_rin_:intern",nbt:"display.temp",interpret:true}

scoreboard objectives setdisplay sidebar board

function _main_:games/global/gametime/reset
function _main_:games/global/gametime/pause
function _main_:games/global/timer/organize
