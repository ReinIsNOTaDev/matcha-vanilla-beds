# Debug
#say Checking Sleep

# Read all player's Sleep Timer nbt to check if they are sleeping
execute as @a store result score @s sleepTimerScore run data get entity @s SleepTimer

# if a player's sleepTimerScore >= 1, add 1 to value Sleeping
execute as @a run execute if score @s sleepTimerScore matches 1.. run scoreboard players add Sleeping MVBplayers 1

# if Sleeping >= Required, time add 480t and set Weather to Clear
execute if score Sleeping MVBplayers >= Required MVBplayers run function matcha_vanilla_beds:skip_time

# clear sleeping players count
scoreboard players set Sleeping MVBplayers 0


# Loop this function in four ticks
schedule function matcha_vanilla_beds:check_sleepers 4t replace