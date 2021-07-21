execute if entity @e[tag=on,scores={teamJoin=1}] run team join light_purple @s
execute if entity @e[tag=off,scores={teamJoin=1}] run function uhc:teamjoins/fail
execute if entity @e[tag=on,scores={teamJoin=1}] run tag @s add playing
execute if entity @e[tag=on,scores={teamJoin=1}] at @s run function uhc:sound/select
function uhc:repeat/updateplayercount
scoreboard players set @s teamJoin 0