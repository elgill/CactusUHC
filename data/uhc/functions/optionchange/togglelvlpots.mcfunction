execute as @e[tag=off,scores={lvl2Pots=1}] run scoreboard players set @e[tag=on] lvl2Pots 2
execute as @e[tag=on,scores={lvl2Pots=1}] run scoreboard players set @e[tag=off] lvl2Pots 2
scoreboard players remove @e[tag=toggle] lvl2Pots 1
function uhc:sound/select