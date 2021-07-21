#antidupe
#recipe take @a *

#scoreboard players add @e[tag=main] inGameTime 1
#function uhc:testmin
execute as @e[limit=1,tag=main] at @s run tp @s ~ ~ ~ ~1 ~

execute as @a[scores={playerKills=1..}] at @s run function uhc:handlekills
execute as @a[scores={playerDeaths=1..}] at @s run function uhc:handledeath
execute if score @e[limit=1,tag=off] regenPots matches 1.. run function uhc:optionframe/regenpots
execute if score @e[limit=1,tag=off] lvl2Pots matches 1.. run function uhc:optionframe/lvl2pots
execute if entity @e[tag=main,tag=inGame] as @a[team=] run function uhc:repeat/duringuhcnewplayer
execute as @a[tag=!allowPlay,gamemode=survival] run function uhc:repeat/duringuhcnewplayer
execute if entity @a[gamemode=spectator] run effect give @a[gamemode=spectator] minecraft:night_vision 15 10 true
execute if entity @e[tag=main,tag=inGame] run schedule function uhc:repeat/duringuhc 1t