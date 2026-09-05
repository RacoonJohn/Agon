
function _main_:games/global/player/impulse/horizontal


scoreboard players operation #x fptrick_impulse *= #DashJump rMath
scoreboard players operation #x fptrick_impulse /= #2 rMath

scoreboard players operation #z fptrick_impulse *= #DashJump rMath
scoreboard players operation #z fptrick_impulse /= #2 rMath


scoreboard players set #y fptrick_impulse 0


function fptrick_impulse:launch_global

