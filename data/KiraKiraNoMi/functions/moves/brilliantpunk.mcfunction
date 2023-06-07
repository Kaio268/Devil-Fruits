# Creating the scoreboard objectives
scoreboard objectives add knockbackX dummy
scoreboard objectives add knockbackY dummy
scoreboard objectives add knockbackZ dummy

give @p minecraft:carrot_on_a_stick{display:{Name:'{"text":"Brilliant Punk"}'},CustomModelData:1}

# Summon an invisible marker armor stand when the player is holding the Brilliant Punk
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1,display:{Name:'{"text":"Brilliant Punk"}'}}}}] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["knockbackMarker"]}

# Apply the knockback effect to entities near the marker armor stand
execute as @e[type=armor_stand,tag=knockbackMarker] at @s as @e[distance=..5] run data merge entity @s {Motion:[0.0,1.0,0.0]}

# Remove the marker armor stand
kill @e[type=armor_stand,tag=knockbackMarker]
