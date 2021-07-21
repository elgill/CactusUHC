#switches which has teamJoin
execute if entity @e[tag=off,scores={teamJoin=1}] run scoreboard players set @e[tag=on] teamJoin 2
execute if entity @e[tag=on,scores={teamJoin=1}] run scoreboard players set @e[tag=off] teamJoin 2
scoreboard players remove @e[tag=toggle] teamJoin 1
function uhc:sound/select