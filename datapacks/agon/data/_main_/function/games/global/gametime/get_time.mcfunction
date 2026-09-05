
execute if score #gametime.Pause settings matches 1 run scoreboard players operation #temp rMath = #gametime.PauseDate rMath
execute if score #gametime.Pause settings matches 0 store result score #temp rMath run stopwatch query gametime 100

return run scoreboard players operation #temp rMath -= #gametime.Pause rMath



