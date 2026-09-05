
forceload add 9000 9000 9200 9200


data modify storage math:data effects set value ["absorption","bad_omen","blindness","breath_of_the_nautilus","conduit_power","darkness","dolphins_grace","fire_resistance","glowing","haste","health_boost","hero_of_the_village","hunger","infested","instant_damage","instant_health","invisibility","jump_boost","mining_fatigue","levitation","luck","nausea","night_vision","oozing","poison","raid_omen","regeneration","resistance","saturation","slowness","slow_falling","speed","strength","trial_omen","water_breathing","weakness","weaving","wind_charged","wither"]


data modify storage _rin_:in inst set value "lobby"
execute unless data storage _rin_:inst "lobby" run function _rin_:api/inst/create with storage _rin_:in inst

data modify storage _rin_:in inst set value "ingame"
execute unless data storage _rin_:inst "ingame" run function _rin_:api/inst/create with storage _rin_:in inst

data modify storage _rin_:in inst set value "stats"
execute unless data storage _rin_:inst "stats" run function _rin_:api/inst/create with storage _rin_:in inst

#function _main_:preset/init


scoreboard objectives add settings dummy
    execute unless score #bridgeBo settings matches 1.. run scoreboard players set #bridgeBo settings 5
    execute unless score #block_fightPoint settings matches 1.. run scoreboard players set #block_fightPoint settings 50
    execute unless score #fall_tagTimer settings matches 1.. run scoreboard players set #fall_tagTimer settings 1040
    execute unless score #fall_tagBo settings matches 1.. run scoreboard players set #fall_tagBo settings 5
    execute unless score #fbgBo settings matches 1.. run scoreboard players set #fbgBo settings 9
    execute unless score #pvpkitBo settings matches 1.. run scoreboard players set #pvpkitBo settings 9
    execute unless score #towerBo settings matches 1.. run scoreboard players set #towerBo settings 9
    
    execute unless score #gameID settings matches 1.. run scoreboard players set #gameID settings 1
    execute unless score #presetID settings matches 1.. run scoreboard players set #presetID settings 1
    execute unless score #mapID settings matches 1.. run scoreboard players set #mapID settings 0

    execute unless score #organizeTimer settings matches 1.. run scoreboard players set #organizeTimer settings 140

    execute unless score #anchorBoostDisableTime settings matches 1.. run scoreboard players set #anchorBoostDisableTime settings 20
    execute unless score #dashCooldown settings matches 1.. run scoreboard players set #dashCooldown settings 60




scoreboard objectives add health health
scoreboard objectives modify health displayname {text:"❤"}
scoreboard objectives setdisplay below_name health

scoreboard objectives add board dummy
scoreboard objectives modify board numberformat blank


scoreboard objectives add canceled trigger
scoreboard objectives add cancel trigger
scoreboard objectives modify cancel displayname {text:"cancel"}


scoreboard objectives add teamID dummy

scoreboard objectives add gameID dummy
scoreboard objectives add gameCount dummy

scoreboard objectives add shop.offerID dummy
scoreboard objectives add shop.price dummy
scoreboard objectives add shop.x dummy
scoreboard objectives add shop.y dummy
scoreboard objectives add shop.s dummy
scoreboard objectives add shop.points dummy


scoreboard objectives add join_game custom:leave_game

scoreboard objectives add invulnerability_ticks dummy

scoreboard objectives add menu.layer dummy
scoreboard objectives add menu.x dummy
scoreboard objectives add menu.y dummy
scoreboard objectives add menu.z dummy
scoreboard objectives add menu.dx dummy
scoreboard objectives add menu.dy dummy
scoreboard objectives add menu.dz dummy
scoreboard objectives add menu.id dummy
scoreboard objectives add menu.use dummy
scoreboard objectives add menu.preUse dummy



scoreboard objectives add stats.round.hit dummy
scoreboard objectives add stats.round.hurt dummy
scoreboard objectives add stats.round.kill dummy
scoreboard objectives add stats.round.death dummy

scoreboard objectives add stats.game.hit dummy
scoreboard objectives add stats.game.hurt dummy
scoreboard objectives add stats.game.kill dummy
scoreboard objectives add stats.game.death dummy


scoreboard objectives add death deathCount
scoreboard objectives add death_detection deathCount

scoreboard objectives add warnTime deathCount

scoreboard objectives add points dummy

scoreboard objectives add date dummy




scoreboard objectives add death_track.date dummy


scoreboard objectives add jump custom:jump
scoreboard objectives add doubleJump dummy
scoreboard objectives add holdJump dummy
scoreboard objectives add holdSneak dummy

scoreboard objectives add dash.date dummy

scoreboard players set #12 rMath 12
scoreboard players set #25 rMath 25
scoreboard players set #40 rMath 40
scoreboard players set #50 rMath 50
scoreboard players set #5000 rMath 20000
scoreboard players set #20000 rMath 20000

scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy
scoreboard objectives add posX-1 dummy
scoreboard objectives add posY-1 dummy
scoreboard objectives add posZ-1 dummy
scoreboard objectives add posX-2 dummy
scoreboard objectives add posY-2 dummy
scoreboard objectives add posZ-2 dummy


function math:setup

#summon item_display ~ ~ ~ {item:{id:"end_portal_frame"}}

stopwatch create time_global


#🗡🪓🛡🧪
team add r
team add g
team add b
team add p
team add s
team modify r color red
team modify g color green
team modify b color blue
team modify p color light_purple
team modify s color gray

team modify r collisionRule pushOtherTeams
team modify g collisionRule pushOtherTeams
team modify b collisionRule pushOtherTeams
team modify p collisionRule pushOtherTeams
team modify s collisionRule pushOtherTeams

team modify r friendlyFire false
team modify g friendlyFire false
team modify b friendlyFire false
team modify p friendlyFire false
team modify s friendlyFire false

team modify r seeFriendlyInvisibles true
team modify g seeFriendlyInvisibles true
team modify b seeFriendlyInvisibles true
team modify p seeFriendlyInvisibles true
team modify s seeFriendlyInvisibles true

team modify r prefix [{text:"[",color:"#FF7200"},{text:"🗡",color:"#FF7200",font:"pvp:icons"},{text:"] ",color:"#FF7200"}]
team modify g prefix [{text:"[",color: "#589E17"},{text:"🪓",color: "#589E17",font:"pvp:icons"},{text:"] ",color: "#589E17"}]
team modify b prefix [{text:"[",color: "#2180BA"},{text:"🛡",color: "#2180BA",font:"pvp:icons"},{text:"] ",color: "#2180BA"}]
team modify p prefix [{text:"[",color: "#C76086"},{text:"🧪",color: "#C76086",font:"pvp:icons"},{text:"] ",color: "#C76086"}]
team modify s prefix {text:"[☁] ",color: "#7D7D7D"}



