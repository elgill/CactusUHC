effect give @s minecraft:blindness 5 0 true
#tp @s 0 251 0
effect give @s absorption 1 0 true
title @s title {"text":"Welcome to","color":"gold"}
title @s subtitle {"text":"Cactus UHC","color":"dark_green"}
function uhc:tellraws/duringuhcnewplayer
function uhc:tellraws/spectatormessage
team join spectate @s
gamemode spectator @s