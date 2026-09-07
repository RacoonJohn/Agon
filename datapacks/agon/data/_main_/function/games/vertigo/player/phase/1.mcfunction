function _main_:games/global/shop/close

function _main_:games/vertigo/player/open_shop


execute if score @s vertigo.role matches 1.. run return 1

tag @s add shop.owner
function _main_:games/vertigo/player/choose_role/anchor
tag @s remove shop.owner
