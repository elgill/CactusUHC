forceload add -16 -16 16 16

tp @s 0 150 0
gamemode adventure @a


#gamerules
gamerule naturalRegeneration false
gamerule spectatorsGenerateChunks false
gamerule doFireTick false
gamerule randomTickSpeed 0
gamerule doDaylightCycle false
gamerule spawnRadius 5
gamerule sendCommandFeedback false
#gamerule gameLoopFunction uhc:repeat/preuhc
schedule function uhc:repeat/preuhc 5t

#gamerule logAdminCommands false
#gamerule commandBlockOutput false


#delayed to troubleshoot

#Misc- 
time set 6000
weather clear 999999
difficulty hard
setworldspawn 0 253 0
worldborder center 0 0


fill -2 0 -2 2 3 2 minecraft:bedrock hollow
fill -1 1 -1 1 2 -1 minecraft:glowstone
fill 1 1 1 -1 2 1 minecraft:command_block
#to be executed on game start
data merge block 1 1 1 {Command:"<Command executed at game start>"}
data merge block 0 1 1 {Command:"<Command executed at game start>"}
data merge block -1 1 1 {Command:"<Worldborder>"}
data merge block 1 2 1 {Command:"<Command executed at game start>"}
data merge block 0 2 1 {Command:"<Command executed at game start>"}
data merge block -1 2 1 {Command:"<Command>"}
#setblock -1 1 0 minecraft:oak_sign[rotation=12]{Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"These commands\"}",Text3:"{\"text\":\"are executed\"}",Text4:"{\"text\":\"at game start\"}"} replace
setblock 1 1 0 minecraft:potted_cactus replace
#Main ArmorStand
summon minecraft:armor_stand 0 240 0 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["main","uhc","3","preuhc"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"DryGaming"}}],CustomName:'{"text":"CactusUHC"}'}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["on","toggle","uhc"],DisabledSlots:4144959,CustomName:'{"text":"On","color":"dark_green"}'}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["off","toggle","uhc"],DisabledSlots:4144959,CustomName:'{"text":"Off","color":"dark_red"}'}
tp @a @e[limit=1,tag=main]


#objectives
scoreboard objectives add H health "❤"
scoreboard objectives setdisplay list H
scoreboard objectives add start dummy
scoreboard objectives add temp dummy
scoreboard objectives add teamJoin trigger
scoreboard objectives add spec trigger
scoreboard objectives add regenPots dummy
scoreboard objectives add lvl2Pots dummy
scoreboard objectives add inTabList dummy
scoreboard objectives add belowName dummy
scoreboard objectives add teamCollision dummy
scoreboard objectives add teamDamage dummy
scoreboard objectives add dropGoldApples dummy
scoreboard objectives add worldBorder dummy
scoreboard objectives add worldBordShrink dummy
scoreboard objectives add worldBordDelay dummy
scoreboard objectives add worldBordTime dummy
scoreboard objectives add killCount dummy
scoreboard objectives add pregen dummy
scoreboard objectives add Dir dummy
scoreboard objectives add Iter dummy
scoreboard objectives add Remain dummy
scoreboard objectives add Info dummy
scoreboard objectives add Running dummy
scoreboard objectives add eternalDay dummy
scoreboard objectives add UHC dummy
scoreboard objectives setdisplay sidebar UHC
#scoreboard objectives add needPlayerCnt dummy
scoreboard players set start10 temp 10
scoreboard players set start50 temp 50
scoreboard players set start20 start 20
scoreboard players set start1200 temp 1200
scoreboard players set Players UHC 0

function uhc:defaultoptions

#teams
team add ref
team modify ref color gold
team add spectate
team modify spectate color gray
team add solo
team modify solo color dark_gray
team add aqua
team modify aqua color aqua
team add blue
team modify blue color blue
team add dark_aqua
team modify dark_aqua color dark_aqua
team add dark_blue
team modify dark_blue color dark_blue
team add dark_green
team modify dark_green color dark_green
team add dark_purple
team modify dark_purple color dark_purple
team add dark_red
team modify dark_red color dark_red
team add gold
team modify gold color gold
team add green
team modify green color green
team add light_purple
team modify light_purple color light_purple
team add red
team modify red color red
team add white
team modify white color white
team add yellow
team modify yellow color yellow
team join red @e[tag=off]
team join green @e[tag=on]
gamemode creative @a[scores={admin=1..}]
gamemode creative @a[scores={owner=1..}]
gamemode creative DryGaming
team join ref @e[tag=main]
team join dark_green Radius
team join ref Players
function uhc:repeat/updateplayercount

execute if entity @e[type=minecraft:armor_stand,tag=preuhc] run schedule function uhc:repeat/preuhc 1t

#gamerule sendCommandFeedback false
tellraw @a [{"text":"[","color":"black"},{"selector":"@e[limit=1,type=armor_stand,tag=main]"},{"text":"] ","color":"black"},{"text":"UHC System Installed!","color":"light_purple"}]

function uhc:optionchange/togglecollision
function uhc:optionchange/togglecollision
function uhc:optionchange/toggleteamdamage
function uhc:optionchange/toggleteamdamage