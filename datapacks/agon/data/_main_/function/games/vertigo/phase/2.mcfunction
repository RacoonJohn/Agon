


bossbar set global0 name [{text:"Equip and choose your start",color:"dark_purple"}]


scoreboard players set #bossbar.global0.max rMath 20000
execute store result bossbar global0 max run scoreboard players get #bossbar.global0.max rMath
execute store result bossbar global0 value run scoreboard players get #bossbar.global0.max rMath
scoreboard players operation #bossbar.global0.date rMath = gametime.current rMath



scoreboard players set #phase rMath 2
