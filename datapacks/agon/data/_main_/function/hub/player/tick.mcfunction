
execute positioned ~ -10 ~ if entity @s[dy=-3,tag=!debug] run tp @s 9.0 1 9.0

scoreboard players set #search teamID -1
execute if score @s teamID matches 1 if score #teamR settings matches 0 run function _main_:hub/team/join
execute if score @s teamID matches 2 if score #teamG settings matches 0 run function _main_:hub/team/join
execute if score @s teamID matches 3 if score #teamB settings matches 0 run function _main_:hub/team/join
execute if score @s teamID matches 4 if score #teamP settings matches 0 run function _main_:hub/team/join


scoreboard players operation @s menu.preUse = @s menu.use
scoreboard players remove @s[scores={menu.use=1..}] menu.use 1


execute if entity @s[tag=editInv] run function _main_:hub/player/edit_inv
execute if entity @s[tag=editName] run function _main_:hub/player/edit_name


