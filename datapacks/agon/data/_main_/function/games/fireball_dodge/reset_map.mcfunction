

fill 958 -64 990 1010 -30 1042 air

kill @e[type=item]
execute as @e[type=item_display,tag=fireball] run function _main_:games/global/player/items/fire_charge/kill

clone 9000 -64 9000 9031 -33 9015 968 -64 1000 strict
