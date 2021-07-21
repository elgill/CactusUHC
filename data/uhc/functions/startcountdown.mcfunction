schedule clear uhc:repeat/preuhc
scoreboard players set @e[tag=main] temp 6
tag @e[limit=1,tag=main] remove preuhc
tag @e[limit=1,tag=main] add starting
#starts countdown timer
function uhc:repeat/showstarttime
execute as @a[gamemode=creative] run function uhc:books/cancelstart