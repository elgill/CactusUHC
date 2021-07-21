execute as @e[tag=off,scores={regenPots=1}] run scoreboard players set @e[tag=on] regenPots 2
execute as @e[tag=on,scores={regenPots=1}] run scoreboard players set @e[tag=off] regenPots 2
scoreboard players remove @e[tag=toggle] regenPots 1
function uhc:sound/select