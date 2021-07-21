tag @e[limit=1,tag=main] remove starting
tag @e[limit=1,tag=main] add inGame
schedule clear function uhc:repeat/showstarttime
schedule clear function uhc:repeat/startinguhc
#say started mhmmmmm

gamerule doDaylightCycle true
gamerule sendCommandFeedback true
gamerule randomTickSpeed 3
gamerule doFireTick true
gamerule doMobSpawning true
advancement revoke @a everything
time set 0
clear @a
effect clear @a
xp set @a 0 levels
title @a title ["",{"text":"GO!","color":"dark_green","bold":true}]
tell DryGaming it started or whatevs
scoreboard objectives add inGameTime dummy
scoreboard objectives add playerKills playerKillCount
scoreboard objectives add playerDeaths deathCount
scoreboard objectives add allowPlay dummy
scoreboard objectives remove teamJoin
scoreboard objectives remove start
scoreboard objectives remove spec
scoreboard objectives remove inTabList
scoreboard objectives remove belowName
scoreboard objectives remove teamCollision
scoreboard objectives remove teamDamage
scoreboard objectives remove pregen
scoreboard objectives remove needPlayerCnt
scoreboard objectives setdisplay sidebar
gamemode survival @a[team=!spectate]
gamemode spectator @a[team=spectate]
tag @a add allowPlay

#spread not solo
execute as @e[scores={worldBorder=496}] run spreadplayers 0 0 100 247 true @a[team=!solo,team=!spectate]
execute as @e[scores={worldBorder=1008}] run spreadplayers 0 0 100 503 true @a[team=!solo,team=!spectate]
execute as @e[scores={worldBorder=1520}] run spreadplayers 0 0 100 759 true @a[team=!solo,team=!spectate]
execute as @e[scores={worldBorder=2032}] run spreadplayers 0 0 100 1015 true @a[team=!solo,team=!spectate]

#spread solo
execute as @e[scores={worldBorder=496}] run spreadplayers 0 0 100 247 false @a[team=solo]
execute as @e[scores={worldBorder=1008}] run spreadplayers 0 0 100 503 false @a[team=solo]
execute as @e[scores={worldBorder=1520}] run spreadplayers 0 0 100 759 false @a[team=solo]
execute as @e[scores={worldBorder=2032}] run spreadplayers 0 0 100 1015 false @a[team=solo]

#setWorldBorder
execute as @e[scores={worldBorder=496}] run worldborder set 496
execute as @e[scores={worldBorder=1008}] run worldborder set 1008
execute as @e[scores={worldBorder=1520}] run worldborder set 1520
execute as @e[scores={worldBorder=2032}] run worldborder set 2032

#if shrink start at 0, start et
#execute if entity @e[tag=on,scores={worldBordShrink=1}] if entity @e[scores={worldBordDelay=0}] run function uhc:startshrink

function uhc:giveeffects

data merge block 1 1 1 {auto:1b}
data merge block 0 1 1 {auto:1b}
#data merge block -1 1 1 {auto:1b}
data merge block 1 2 1 {auto:1b}
data merge block 0 2 1 {auto:1b}
#data merge block -1 2 1 {auto:1b}
#fill -12 250 12 12 253 -12 air
execute at @e[tag=main] run tp @e[tag=main] ~ 1 ~
data merge entity @e[limit=1,tag=main] {CustomNameVisible:0}
function uhc:repeat/duringuhc
scoreboard players set @e[tag=main] inGameTime 0
function uhc:repeat/minfunc

