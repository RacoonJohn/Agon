
scoreboard players operation #temp menu.x = @s menu.x
scoreboard players operation #temp menu.y = @s menu.y
scoreboard players operation #temp menu.z = @s menu.z
scoreboard players operation #temp menu.x += @s menu.dx
scoreboard players operation #temp menu.y += @s menu.dy
scoreboard players operation #temp menu.z += @s menu.dz


#tellraw @a [{score:{name:"@s",objective:"menu.x"}},",",{score:{name:"SD.dx",objective:"rMath"}},",",{score:{name:"#temp",objective:"menu.x"}}]
#tellraw @a [{score:{name:"@s",objective:"menu.y"}},",",{score:{name:"SD.dy",objective:"rMath"}},",",{score:{name:"#temp",objective:"menu.y"}}]

execute if score SD.dx rMath > @s menu.x if score SD.dx rMath < #temp menu.x \
 if score SD.dy rMath > @s menu.y if score SD.dy rMath < #temp menu.y \
 run return run function _main_:hub/menu/display/overview


