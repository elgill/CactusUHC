execute as @e[tag=off,scores={belowName=1}] run scoreboard players set @e[tag=on] belowName 2
execute as @e[tag=on,scores={belowName=1}] run scoreboard players set @e[tag=off] belowName 2
scoreboard players remove @e[tag=toggle] belowName 1
function uhc:sound/select
execute as @e[tag=on,scores={belowName=1}] run scoreboard objectives setdisplay belowName H
execute as @e[tag=off,scores={belowName=1}] run scoreboard objectives setdisplay belowName