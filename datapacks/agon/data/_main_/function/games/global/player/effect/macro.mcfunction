$scoreboard players set #test rMath $(particle)

$execute if score #test rMath matches 1 run effect give @s $(id) $(duration) $(amplifier) false
$execute if score #test rMath matches 0 run effect give @s $(id) $(duration) $(amplifier) true


