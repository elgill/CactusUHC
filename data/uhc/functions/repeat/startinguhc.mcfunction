execute as @e[limit=1,tag=main] at @s run tp @s ~ ~ ~ ~10 ~
execute as @a[team=] run function uhc:repeat/preuhcnewplayer
execute unless score @e[limit=1,tag=main] temp matches ..0 if entity @e[tag=main,tag=starting] run schedule function uhc:repeat/startinguhc 2t