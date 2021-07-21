execute as @e[tag=off,scores={eternalDay=1}] run scoreboard players set @e[tag=on] eternalDay 2
execute as @e[tag=on,scores={eternalDay=1}] run scoreboard players set @e[tag=off] eternalDay 2
scoreboard players remove @e[tag=toggle] eternalDay 1
function uhc:sound/select
