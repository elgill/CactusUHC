team join solo @s
#execute if entity @e[tag=off,scores={teamJoin=1}] run function uhc:teamjoins/fail
tag @s add playing
execute at @s run function uhc:sound/select
function uhc:repeat/updateplayercount
scoreboard players set @s teamJoin 0