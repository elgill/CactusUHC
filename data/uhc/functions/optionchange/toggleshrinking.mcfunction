execute if entity @e[tag=off,scores={worldBordShrink=1}] run scoreboard players set @e[tag=on] worldBordShrink 2
execute if entity @e[tag=on,scores={worldBordShrink=1}] run scoreboard players set @e[tag=off] worldBordShrink 2
scoreboard players remove @e[tag=toggle] worldBordShrink 1
function uhc:sound/select