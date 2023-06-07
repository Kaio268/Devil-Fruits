# Decrease Cooldown score by 1 every tick, if it's greater than 0
execute as @a[scores={Cooldown=1..}] run scoreboard players remove @s Cooldown 1

# Check if the player is holding the Brilliant Punk item and their Cooldown score is 0
# If both conditions are met, run the brilliant_punk function
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:1,display:{Name:'{"text":"Brilliant Punk"}'}}}},scores={Cooldown=0..}] run function datapack_namespace:brilliant_punk
