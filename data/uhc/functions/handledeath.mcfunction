execute if entity @e[tag=on,scores={dropGoldApples=1}] as @a[scores={playerDeaths=1}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_apple",Count:1b,tag:{display:{Name:'{"text":"Bloody Apple","color":"dark_red","bold":true}',Lore:['{"text":"Apple forged from blood"}']}}}}
scoreboard players remove @s playerDeaths 1
#execute @s[m=survival] ~ ~ ~ playsound entity.zombie_villager.cure voice @a ~ ~ ~ .5 2 .5
gamemode spectator @s
execute at @s run spawnpoint @s ~ ~ ~
execute at @e[tag=main] run summon lightning_bolt ~ ~100 ~
function uhc:tellraws/spectatormessage