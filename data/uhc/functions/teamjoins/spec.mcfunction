execute if entity @e[tag=on,scores={spec=1}] run team join spectate @s
execute if entity @e[tag=off,scores={spec=1}] run function uhc:teamjoins/fail
execute if entity @e[tag=on,scores={spec=1}] run tag @s remove playing
execute if entity @e[tag=on,scores={spec=1}] at @s run function uhc:sound/select
function uhc:repeat/updateplayercount
scoreboard players set @s spec 0