execute store result score #temp rMath run stopwatch query gametime 100


scoreboard players operation #temp rMath -= #gametime.PauseDate rMath

scoreboard players operation #gametime.Pause rMath += #temp rMath





scoreboard players set #gametime.Pause settings 0