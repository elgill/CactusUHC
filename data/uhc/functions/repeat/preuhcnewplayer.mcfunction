effect give @s minecraft:blindness 5 0 true
tp @s @e[limit=1,tag=main]
gamemode adventure @s[gamemode=survival]
effect give @s absorption 1 0 true
title @s title {"text":"Welcome to","color":"gold"}
title @s subtitle {"text":"Cactus UHC","color":"dark_green"}
execute as @s run function uhc:teamjoins/solo
function uhc:tellraws/preuhcnewplayer
function uhc:repeat/updateplayercount