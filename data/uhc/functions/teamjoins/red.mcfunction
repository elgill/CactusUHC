execute if entity @e[tag=on,scores={teamJoin=1}] as @s run team join red @s
execute if entity @e[tag=off,scores={teamJoin=1}] as @s run function uhc:teamjoins/fail
execute if entity @e[tag=on,scores={teamJoin=1}] as @s run tag @s add playing
execute if entity @e[tag=on,scores={teamJoin=1}] as @s at @s run function uhc:sound/select
function uhc:repeat/updateplayercount
scoreboard players set @s teamJoin 0