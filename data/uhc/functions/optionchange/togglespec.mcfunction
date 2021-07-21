#switches which has spec
execute if entity @e[tag=off,scores={spec=1}] run scoreboard players set @e[tag=on] spec 2
execute if entity @e[tag=on,scores={spec=1}] run scoreboard players set @e[tag=off] spec 2
scoreboard players remove @e[tag=toggle] spec 1
function uhc:sound/select