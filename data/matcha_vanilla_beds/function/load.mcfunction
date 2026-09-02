# Load message
tellraw @a [{text:"Matcha-Vanilla Beds is now loaded",color:"red"}]

# Scoreboard setup
scoreboard objectives add MVBplayers dummy
scoreboard players reset * MVBplayers
scoreboard players set 100 MVBplayers 100

# Start Looping functions
schedule function matcha_vanilla_beds:check_sleepers 4t replace
schedule function matcha_vanilla_beds:update_required_sleepers 1s replace
