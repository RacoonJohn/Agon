
fill 928 -30 950 1080 0 1112 air replace


execute store result storage math:data macro.x int 1 run random value 100000..100500
execute store result storage math:data macro.y int 1 run random value -50..150
execute store result storage math:data macro.z int 1 run random value 100000..100500

function _main_:games/fbg/reset_map_macro with storage math:data macro

#execute store success score #test rMath run clone 9968 -64 10240 10128 -4 10400 9968 -64 10240 replace move

#tellraw @a {score:{name:"#test",objective:"rMath"}}

#function _main_:games/fbg/reset_map_random
#function _main_:games/fbg/reset_map_macro with storage math:data macro
#clone 9968 -64 10240 10058 -4 10330 959 -50 971 masked move
#
#function _main_:games/fbg/reset_map_random
#function _main_:games/fbg/reset_map_macro with storage math:data macro
#clone 9968 -64 10240 10058 -4 10330 934 -64 961 masked move
#
#function _main_:games/fbg/reset_map_random
#function _main_:games/fbg/reset_map_macro with storage math:data macro
#clone 9968 -64 10240 10058 -4 10330 984 -50 961 masked move
#
#function _main_:games/fbg/reset_map_random
#function _main_:games/fbg/reset_map_macro with storage math:data macro
#clone 9968 -64 10240 10058 -4 10330 934 -50 1011 masked move
#
#function _main_:games/fbg/reset_map_random
#function _main_:games/fbg/reset_map_macro with storage math:data macro
#clone 9968 -64 10240 10058 -4 10330 984 -50 1011 masked move
