scoreboard players remove @e[tag=main] temp 1
execute if entity @e[tag=main,tag=starting] run execute unless score @e[limit=1,tag=main] temp matches ..0 run title @a title ["",{"score":{"name":"@e[limit=1,tag=main]","objective":"temp"},"color":"gold","bold":true}]
execute if entity @e[tag=main,tag=starting] run execute unless score @e[limit=1,tag=main] temp matches ..0 run execute as @a at @s run function uhc:sound/countdown
execute unless score @e[limit=1,tag=main] temp matches ..0 run execute if entity @e[type=armor_stand,tag=main,tag=starting] run schedule function uhc:repeat/showstarttime 1s
execute if entity @e[tag=main,tag=starting] run execute if score @e[limit=1,tag=main] temp matches ..0 run function uhc:startuhcgame