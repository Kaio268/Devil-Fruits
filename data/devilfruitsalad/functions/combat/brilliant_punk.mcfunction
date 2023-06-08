advancement revoke @a only devilfruitsalad:brilliant_punk_hit
execute at @a as @s if score @s brilliant_punk_cooldown matches 0 run say Burianto Panku!
execute at @a as @s unless score @s brilliant_punk_cooldown matches 0 run say Move on Cooldown

# Generate particle effect
execute as @a at @e[distance=..5,type=!player,sort=nearest,limit=1,nbt={HurtTime:10s}] if score @s brilliant_punk_cooldown matches 0 run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 100 force

# Apply knockback to nearby entities
execute as @a at @e[distance=..5,type=!player,sort=nearest,limit=1,nbt={HurtTime:10s}] if score @s brilliant_punk_cooldown matches 0 run summon minecraft:creeper ~ ~ ~ {NoAI:1b,Fuse:0s, ExplosionRadius:10b}

# Apply resistance effect to the player
execute at @a as @s if score @s brilliant_punk_cooldown matches 0 run effect give @s minecraft:resistance 5 5 true

execute at @a as @s if score @s brilliant_punk_cooldown matches 0 run scoreboard players add @s brilliant_punk_cooldown 350
