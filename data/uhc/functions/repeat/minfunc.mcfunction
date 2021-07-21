#temp=min
#scoreboard players operation @e[tag=main] temp /= start1200 temp

execute if score @e[limit=1,tag=main] inGameTime = @e[limit=1,tag=main] worldBordDelay if entity @e[tag=on,scores={worldBordShrink=1}] run function uhc:startshrink

execute if score @e[limit=1,tag=main] inGameTime = @e[limit=1,tag=main] eternalDay if entity @e[tag=on,scores={eternalDay=1}] run function uhc:eternaldayinit


#test if 10 min remainder, minMark=start10:temp
scoreboard players operation @e[tag=main] temp %= start10 temp
#temp=min
scoreboard players operation Display temp = @e[tag=main] inGameTime
tellraw @a[team=ref] ["",{"text":"Ref, Time so far is ","color":"yellow"},{"score":{"name":"Display","objective":"temp"},"color":"yellow"},{"text":" minutes.","color":"yellow"}]
setblock 1 2 0 air
setblock 1 2 0 minecraft:oak_sign[rotation=4]{Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"We are\",\"color\":\"dark_blue\"}",Text3:"{\"score\":{\"name\":\"Display\",\"objective\":\"temp\"},\"color\":\"dark_green\"}",Text4:"{\"text\":\"minutes in\",\"color\":\"dark_blue\"}"}
#min mark msg
scoreboard players operation @e[tag=main] temp = @e[tag=main] inGameTime
scoreboard players operation @e[tag=main] temp %= minMarkMess temp

execute if score @e[limit=1,tag=main] temp matches 0 unless score @e[limit=1,tag=main] inGameTime matches 0 as @a run function uhc:tellraws/minmarkmessage
execute if score @e[limit=1,tag=main] temp matches 0 unless score @e[limit=1,tag=main] inGameTime matches 0 as @a at @s run function uhc:sound/minmarksound
scoreboard players add @e[tag=main] inGameTime 1
execute if entity @e[tag=main,tag=inGame] run schedule function uhc:repeat/minfunc 60s