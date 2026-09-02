# Debug
#say Updating players

# Update online players count
execute store result score Online MVBplayers run list

# Update required sleeping players value based on the set Sleeping Percentage
execute store result score Percentage MVBplayers run gamerule players_sleeping_percentage
scoreboard players operation Required MVBplayers = Percentage MVBplayers
scoreboard players operation Required MVBplayers *= Online MVBplayers
scoreboard players operation Required MVBplayers /= 100 MVBplayers

# Failsafe for when there are so few players online that the required sleeping players value returns 0 (which would cause the game to constantly increase the time)
execute if score Required MVBplayers matches 0 run scoreboard players set Required MVBplayers 1


# Loop this function in one second
schedule function matcha_vanilla_beds:update_required_sleepers 1s replace