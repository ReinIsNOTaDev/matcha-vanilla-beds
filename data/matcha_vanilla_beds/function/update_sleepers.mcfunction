# update their sleeptimer
execute as @s store result score @s sleepTimerScore run data get entity @s SleepTimer

# if their sleeptimer is 0, remove is_sleeping and reduce sleeping players by 1
execute as @s if score @s sleepTimerScore matches 0 run function matcha_vanilla_beds:process_not_sleeper
