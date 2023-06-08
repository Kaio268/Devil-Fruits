advancement revoke @s only devilfruitsalad:consumed_kira_fruit
clear @s minecraft:apple{CustomModelData:71220001,DevilFruit:1b}

say Kira Kira No Mi was Consumed!

execute as @a at @s if score @s consumed_devil_fruit matches 1 run function devilfruitsalad:remove_devil_fruit

scoreboard players set @s consumed_devil_fruit 1

clear @s minecraft:apple{CustomModelData:71220001,DevilFruit:1b}
give @s arrow{display:{Name:'{"text":"Brilliant Punk","color":"dark_aqua","bold":true,"italic":true}',Lore:['{"text":"Hold to use Brilliant Punk","italic":true}']},move:"brilliant_punk",Enchantments:[{}]} 1

execute as @a at @s run scoreboard objectives setdisplay sidebar brilliant_punk_cooldown