
$execute if score #test rMath matches 0 run return run data modify entity @s text set value [{translate:"gamerule.minecraft.$(id)",color:dark_gray},{text:" ✘",color:red}]

$data modify entity @s text set value [{translate:"gamerule.minecraft.$(id)",color:dark_gray},{text:" ✔",color:blue}]

