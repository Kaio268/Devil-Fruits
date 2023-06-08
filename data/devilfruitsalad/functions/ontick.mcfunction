# Decrease Cooldown score by 1 every tick, if it's greater than 0
execute as @a[scores={Cooldown=1..}] run scoreboard players remove @s Cooldown 1

execute as @a at @s if score @s consumed_devil_fruit matches 1 if block ~ ~-1 ~ minecraft:water run tp ~ ~-0.1 ~
execute as @a at @s if score @s consumed_devil_fruit matches 1 if score @s player_swimming matches 1 run effect give @s slowness 5 1
execute as @a at @s if score @s consumed_devil_fruit matches 1 if score @s player_swimming matches 1 run effect give @s weakness 5 1
execute as @a at @s if score @s consumed_devil_fruit matches 1 if score @s player_swimming matches 1 run effect give @s mining_fatigue 5 1

# Player sprints to perfrom a powerful punch.
execute as @a at @s[nbt={SelectedItem:{id:"minecraft:arrow",tag:{move:brilliant_punk}}}] if score @s consumed_devil_fruit matches 1 run effect give @s speed 1 5

# Apply effect if user has devil fruit
execute as @a at @s if score @s consumed_devil_fruit matches 0 run clear @s minecraft:arrow{move:brilliant_punk}
execute as @a if score @s consumed_devil_fruit matches 1 run effect give @s resistance 1 3 true
execute as @a if score @s consumed_devil_fruit matches 1 run effect give @s fire_resistance 1 2 true

execute as @a at @s run scoreboard players remove @s brilliant_punk_cooldown 1
execute as @a at @s if score @s brilliant_punk_cooldown matches ..-1 run scoreboard players set @s brilliant_punk_cooldown 0
