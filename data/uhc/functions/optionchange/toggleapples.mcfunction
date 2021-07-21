execute as @e[tag=off,scores={dropGoldApples=1}] run scoreboard players set @e[tag=on] dropGoldApples 2
execute as @e[tag=on,scores={dropGoldApples=1}] run scoreboard players set @e[tag=off] dropGoldApples 2
scoreboard players remove @e[tag=toggle] dropGoldApples 1
function uhc:sound/select