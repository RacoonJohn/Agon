

function _main_:games/global/player/impulse/horizontal

scoreboard players operation #dx fptrick_impulse = #Motion posX
scoreboard players operation #dz fptrick_impulse = #Motion posZ
scoreboard players operation #dx fptrick_impulse /= #2 rMath
scoreboard players operation #dz fptrick_impulse /= #2 rMath

scoreboard players operation #x fptrick_impulse -= #dx fptrick_impulse
scoreboard players operation #z fptrick_impulse -= #dz fptrick_impulse

scoreboard players operation #Dash rMath *= #10 rMath
scoreboard players add #Dash rMath 30

scoreboard players operation #dx fptrick_impulse *= #Dash rMath
scoreboard players operation #dz fptrick_impulse *= #Dash rMath

scoreboard players operation #x fptrick_impulse += #dx fptrick_impulse
scoreboard players operation #z fptrick_impulse += #dz fptrick_impulse

scoreboard players set #y fptrick_impulse 3000

function fptrick_impulse:launch_global



scoreboard players operation @s dash.date = #gametime rMath
scoreboard players operation @s dash.date += #dashCooldown settings


