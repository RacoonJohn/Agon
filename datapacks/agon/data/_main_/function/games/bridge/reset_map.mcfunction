

clone 9000 -64 9000 9141 0 9065 968 -64 1000 replace


function _main_:games/bridge/zone
function _rin_:api/protection/kill_from_origin
function _rin_:api/protection/clone


execute positioned 1002 -53 1028 summon marker run function _main_:games/bridge/init/9fprot/r0
#execute positioned 1002 -39 1028 summon marker run function _main_:games/bridge/init/9fprot/r1
execute positioned 1098 -53 1028 summon marker run function _main_:games/bridge/init/9fprot/b0
#execute positioned 1098 -39 1028 summon marker run function _main_:games/bridge/init/9fprot/b1

forceload add 10034 9968 10094 9968
clone 10034 -62 9968 10094 -51 9968 1024 -62 1032

