execute as @e[tag=off,scores={inTabList=1}] run scoreboard players set @e[tag=on] inTabList 2
execute as @e[tag=on,scores={inTabList=1}] run scoreboard players set @e[tag=off] inTabList 2
scoreboard players remove @e[tag=toggle] inTabList 1
execute as @e[tag=on,scores={inTabList=1}] run scoreboard objectives setdisplay list H
execute as @e[tag=off,scores={inTabList=1}] run scoreboard objectives setdisplay list
function uhc:sound/select
