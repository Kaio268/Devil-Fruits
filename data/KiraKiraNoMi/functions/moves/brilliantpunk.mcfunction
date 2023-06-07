# Generate particle effect
particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 100 force

# Apply knockback to nearby entities
execute as @e[type=minecraft:creeper,distance=..5] run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:10b}

# Apply resistance effect to the player
effect give @s minecraft:resistance 5 5 true

# Add cooldown
scoreboard players add @s Cooldown 1
