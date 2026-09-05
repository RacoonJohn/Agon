
$execute positioned 9000 -64 9000 run kill @e[dx=$(dx),dy=$(dy),dz=$(dz)]

$execute positioned $(x) -64 $(z) run clone ~ ~ ~ ~$(dx) ~$(dy) ~$(dz) 9000 -64 9000 strict

function _rin_:api/protection/clone_entity

$execute positioned 9000 -64 9000 as @e[dx=$(dx),dy=$(dy),dz=$(dz)] run function _main_:games/global/map/init

