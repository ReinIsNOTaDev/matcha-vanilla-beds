# Debug
#say Checking Sleep

# Read is_sleeping player's Sleep Timer nbt to check if they are sleeping
execute as @a[tag=is_sleeping] run function matcha_vanilla_beds:update_sleepers

# if Sleeping >= Required, time add 480t and set Weather to Clear
execute if score Sleeping MVBplayers >= Required MVBplayers run function matcha_vanilla_beds:skip_time

# Loop this function in four ticks
schedule function matcha_vanilla_beds:check_sleepers 4t replace
