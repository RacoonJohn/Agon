##Motion approximation
data modify storage math:data player set from entity @s

    scoreboard players operation #Pos-1 posX = @s posX
    scoreboard players operation #Pos-1 posY = @s posY
    scoreboard players operation #Pos-1 posZ = @s posZ

    execute store result score @s posX run data get storage math:data player.Pos[0] 1000
    execute store result score @s posY run data get storage math:data player.Pos[1] 1000
    execute store result score @s posZ run data get storage math:data player.Pos[2] 1000

    scoreboard players operation #Motion posX = @s posX
    scoreboard players operation #Motion posY = @s posY
    scoreboard players operation #Motion posZ = @s posZ

    scoreboard players operation #Motion posX -= #Pos-1 posX
    execute store result score #Motion posY run data get storage math:data player.Motion[1] 1000
    scoreboard players operation #Motion posZ -= #Pos-1 posZ

    scoreboard players operation #Motion posX *= #1000 rMath
    scoreboard players operation #Motion posZ *= #1000 rMath
    
    scoreboard players operation #Motion posX /= gametime.delta.tick rMath
    scoreboard players operation #Motion posZ /= gametime.delta.tick rMath

    scoreboard players operation @s posX-2 = @s posX-1
    scoreboard players operation @s posY-2 = @s posY-1
    scoreboard players operation @s posZ-2 = @s posZ-1

    scoreboard players operation @s posX-1 = #Pos-1 posX
    scoreboard players operation @s posY-1 = #Pos-1 posY
    scoreboard players operation @s posZ-1 = #Pos-1 posZ

    
    scoreboard players operation @s motionX = #Motion posX
    scoreboard players operation @s motionY = #Motion posY
    scoreboard players operation @s motionZ = #Motion posZ
######################



execute if entity @s[tag=explosed] run scoreboard players set @s doubleJump 0

data modify storage math:data feet set from entity @s equipment.feet


scoreboard players set #Dash rMath 0
scoreboard players set #DashJump rMath 0
scoreboard players set #DoubleJump rMath 0

execute if data storage math:data feet.components."minecraft:enchantments"."_main_:dash" store result score #Dash rMath run data get entity @s equipment.feet.components."minecraft:enchantments"."_main_:dash"
execute if data storage math:data feet.components."minecraft:enchantments"."_main_:dash_jump" store result score #DashJump rMath run data get entity @s equipment.feet.components."minecraft:enchantments"."_main_:dash_jump"
execute if data storage math:data feet.components."minecraft:enchantments"."_main_:double_jump" store result score #DoubleJump rMath run data get entity @s equipment.feet.components."minecraft:enchantments"."_main_:double_jump"

execute if score @s doubleJump < #DoubleJump rMath unless predicate _main_:flag/on_ground if entity @s[tag=canDoubleJump] if predicate _main_:input/jump if score @s holdJump matches 0 run function _main_:games/global/player/double_jump/main

execute unless predicate _main_:flag/on_ground run tag @s add canDoubleJump
execute if predicate _main_:flag/on_ground run function _main_:games/global/player/double_jump/cant

execute if score @s jump matches 1.. if score #DashJump rMath matches 1.. if predicate _main_:input/move run function _main_:games/global/player/dash_jump/main

execute unless score @s dash.date matches 0.. run scoreboard players set @s dash.date 0
execute if predicate _main_:flag/sprinting if predicate _main_:input/sneak if score @s holdSneak matches 0 if score #Dash rMath matches 1.. if score @s dash.date < #gametime rMath run function _main_:games/global/player/dash/main



execute if score @s gameID matches 1.. run function _main_:games/global/player/ingame


attribute @s entity_interaction_range modifier remove looking_at_far
attribute @s entity_interaction_range modifier remove looking_at_inf
execute if predicate _main_:looking_at_far run attribute @s entity_interaction_range modifier add looking_at_far 1.5 add_value
execute if predicate _main_:looking_at_inf run attribute @s entity_interaction_range modifier add looking_at_inf 22 add_value



tag @s remove explosed

execute store result score @s holdJump if predicate _main_:input/jump
execute store result score @s holdSneak if predicate _main_:input/sneak



execute if predicate _main_:flag/on_ground run attribute @s[tag=!jumpPaded.persist] safe_fall_distance modifier remove jump_pad
execute if predicate _main_:flag/on_ground run tag @s[tag=!jumpPaded.persist] remove jumpPaded
tag @s remove jumpPaded.persist

execute if score @s cancel matches 1.. run function _main_:games/global/player/cancel/main


attribute @s attack_damage modifier remove invulnerability
attribute @s knockback_resistance modifier remove invulnerability
execute if score @s invulnerability_ticks matches 1.. run attribute @s attack_damage modifier add invulnerability -1000 add_value
execute if score @s invulnerability_ticks matches 1.. run attribute @s knockback_resistance modifier add invulnerability 1000 add_value
execute if score @s invulnerability_ticks matches 20.. run effect give @s resistance 1 255 true
execute if score @s invulnerability_ticks matches 1.. run scoreboard players remove @s invulnerability_ticks 1


attribute @s gravity modifier remove heavy_wings
execute if predicate _main_:flag/flying if items entity @s armor.chest *[custom_data~{item:"heavy_wings"}] run attribute @s gravity modifier add heavy_wings 0.08 add_value

execute unless score @s death_track.date matches 1.. run scoreboard players set @s death_track.date 0
execute if score @s death_track.date < #gametime rMath run function _main_:games/global/player/hit_match/death_track



execute if entity @s[tag=temp_block_placed] run function _main_:games/global/player/items/temp_wools/schedule

function _main_:games/global/player/items/dripleaf/main

function _main_:games/global/shop/tick

scoreboard players set #break rMath 0
execute on attacker run scoreboard players set #break rMath 1

execute if score #break rMath matches 0 run tag @s remove hit.direct
