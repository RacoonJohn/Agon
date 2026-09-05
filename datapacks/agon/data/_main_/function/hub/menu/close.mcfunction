

scoreboard players operation #search _rin_global_ownerID = @s _rin_global_playerID

#tellraw @a {score:{name:"#search",objective:"_rin_global_ownerID"}}
execute as @e[tag=menu,type=block_display,predicate=_main_:search_owner] run function _main_:hub/menu/buttons/close

