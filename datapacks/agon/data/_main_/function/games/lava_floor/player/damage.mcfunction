
execute on attacker run tag @s add attacker

effect clear @s resistance
damage @s 5 lava by @n[tag=attacker] from @n[tag=attacker] 
execute unless entity @n[tag=attacker] run damage @s 5 lava

tag @n[tag=attacker] remove attacker

tag @s add touch_lava
