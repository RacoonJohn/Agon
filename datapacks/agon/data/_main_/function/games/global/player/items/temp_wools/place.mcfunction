
execute if block ~ ~ ~ #wool run return run function _main_:games/global/player/items/temp_wools/place_final

execute if score $raycast.hit_face bs.lambda matches 0 positioned ~ ~-1 ~ run return run function _main_:games/global/player/items/temp_wools/place_final
execute if score $raycast.hit_face bs.lambda matches 1 positioned ~ ~1 ~ run return run function _main_:games/global/player/items/temp_wools/place_final
execute if score $raycast.hit_face bs.lambda matches 2 positioned ~ ~ ~-1 run return run function _main_:games/global/player/items/temp_wools/place_final
execute if score $raycast.hit_face bs.lambda matches 3 positioned ~ ~ ~1 run return run function _main_:games/global/player/items/temp_wools/place_final
execute if score $raycast.hit_face bs.lambda matches 4 positioned ~-1 ~ ~ run return run function _main_:games/global/player/items/temp_wools/place_final
execute if score $raycast.hit_face bs.lambda matches 5 positioned ~1 ~ ~ run return run function _main_:games/global/player/items/temp_wools/place_final


