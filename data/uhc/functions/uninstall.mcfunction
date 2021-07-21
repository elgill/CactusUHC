tellraw @a [{"text":"[","color":"black"},{"selector":"@e[limit=1,type=armor_stand,tag=main]"},{"text":"] ","color":"black"},{"text":"UHC System Uninstalled!","color":"light_purple"}]
#gamerules

schedule clear uhc:repeat/preuhc
schedule clear uhc:repeat/minfunc
schedule clear uhc:repeat/duringuhc
schedule clear uhc:repeat/startinguhc
schedule clear uhc:repeat/showstarttime

#gamerule gameLoopFunction -
gamerule spectatorsGenerateChunks true
gamerule doFireTick true
gamerule randomTickSpeed 3
gamerule doDaylightCycle true
gamerule logAdminCommands true
gamerule naturalRegeneration true
worldborder set 100000

kill @e[tag=uhc]
fill -2 0 -2 2 3 2 minecraft:bedrock
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay belowName

#teams
team remove aqua
team remove blue
team remove dark_aqua
team remove dark_blue
team remove dark_green
team remove dark_purple
team remove dark_red
team remove gold
team remove green
team remove light_purple
team remove red
team remove white
team remove yellow
team remove solo
team remove spectate
team remove ref

#tags
tag @a remove allowPlay
tag @a remove playing

#objectives
scoreboard objectives remove H
scoreboard objectives remove start
scoreboard objectives remove eternalDay
scoreboard objectives remove temp
scoreboard objectives remove teamJoin
scoreboard objectives remove spec
scoreboard objectives remove regenPots 
scoreboard objectives remove lvl2Pots 
scoreboard objectives remove inTabList 
scoreboard objectives remove belowName 
scoreboard objectives remove teamCollision 
scoreboard objectives remove teamDamage 
scoreboard objectives remove dropGoldApples
scoreboard objectives remove worldBorder
scoreboard objectives remove worldBordShrink
scoreboard objectives remove worldBordDelay
scoreboard objectives remove worldBordTime
scoreboard objectives remove inGameTime
scoreboard objectives remove playerKills
scoreboard objectives remove playerDeaths
scoreboard objectives remove killCount
scoreboard objectives remove UHC 
scoreboard objectives remove Dir
scoreboard objectives remove Iter
scoreboard objectives remove Remain
scoreboard objectives remove Info
scoreboard objectives remove Running
scoreboard objectives remove pregen
scoreboard objectives remove needPlayerCnt
scoreboard objectives remove allowPlay

forceload remove all