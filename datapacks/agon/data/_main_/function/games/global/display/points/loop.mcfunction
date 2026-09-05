

function _main_:games/global/display/points/str with storage math:data str
function _main_:games/global/display/points/str with storage math:data str
function _main_:games/global/display/points/str with storage math:data str
function _main_:games/global/display/points/str with storage math:data str


execute store result storage math:data str.r int 2 run scoreboard players get #limit1 rMath
execute store result storage math:data str.g int 2 run scoreboard players get #limit2 rMath
execute store result storage math:data str.b int 2 run scoreboard players get #limit3 rMath
execute store result storage math:data str.p int 2 run scoreboard players get #limit4 rMath

scoreboard players remove #limit1 rMath 1
scoreboard players remove #limit2 rMath 1
scoreboard players remove #limit3 rMath 1
scoreboard players remove #limit4 rMath 1

execute store result storage math:data str.r_ int -2 run scoreboard players operation #limit1 rMath -= #limit rMath
execute store result storage math:data str.g_ int -2 run scoreboard players operation #limit2 rMath -= #limit rMath
execute store result storage math:data str.b_ int -2 run scoreboard players operation #limit3 rMath -= #limit rMath
execute store result storage math:data str.p_ int -2 run scoreboard players operation #limit4 rMath -= #limit rMath


function _main_:games/global/display/points/parse with storage math:data str

