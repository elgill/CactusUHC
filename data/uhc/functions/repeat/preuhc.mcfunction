execute as @a[team=] run function uhc:repeat/preuhcnewplayer

#effects
effect give @a minecraft:resistance 5 10 true
effect give @a minecraft:weakness 5 255 true
effect give @a minecraft:saturation 5 5 true

#turns the main stand
execute as @e[limit=1,tag=main] at @s run tp @s ~ ~ ~ ~2.5 ~

#teamjoins
function uhc:repeat/updateplayercount
scoreboard players enable @a teamJoin
scoreboard players enable @a spec

execute as @a run function uhc:books/teamjoinbook
execute as @a[gamemode=creative] run function uhc:books/optionsbook

#replaceitem entity @a[m=1] slot.hotbar.2 written_book 1 0 {pages:["[\"\",{\"text\":\"You may start and cancel pregen below.\\n\"},{\"text\":\"Start\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function uhc:pregen/startpregen\"}},{\"text\":\"\\n\",\"color\":\"none\"},{\"text\":\"Cancel\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function uhc:pregen/cancelpregen\"}}]"],title:Pregen,author:DryGaming,Unbreakable:1}

tag @e[type=item,nbt={Item:{tag:{Unbreakable:1}}}] add clear
kill @e[type=item,tag=clear]

execute as @a[scores={teamJoin=1}] run function uhc:teamjoins/red
execute as @a[scores={teamJoin=2}] run function uhc:teamjoins/yellow
execute as @a[scores={teamJoin=3}] run function uhc:teamjoins/green
execute as @a[scores={teamJoin=4}] run function uhc:teamjoins/aqua
execute as @a[scores={teamJoin=5}] run function uhc:teamjoins/blue
execute as @a[scores={teamJoin=6}] run function uhc:teamjoins/lightpurple
execute as @a[scores={teamJoin=7}] run function uhc:teamjoins/darkred
execute as @a[scores={teamJoin=8}] run function uhc:teamjoins/gold
execute as @a[scores={teamJoin=9}] run function uhc:teamjoins/darkgreen
execute as @a[scores={teamJoin=10}] run function uhc:teamjoins/darkaqua
execute as @a[scores={teamJoin=11}] run function uhc:teamjoins/darkblue
execute as @a[scores={teamJoin=12}] run function uhc:teamjoins/darkpurple
execute as @a[scores={teamJoin=13}] run function uhc:teamjoins/solo
execute as @a[scores={spec=1}] run function uhc:teamjoins/spec

#execute @a[score_pregen_min=1,score_pregen=1] ~ ~ ~ function uhc:pregen/initpregen
#execute @a[score_pregen_min=2,score_pregen=2] ~ ~ ~ scoreboard players add @s Info 1
#execute @a[score_pregen_min=2,score_pregen=2,score_Info_min=40] ~ ~ ~ function uhc:pregen/repeatpregen
#execute @a[score_pregen_min=2,score_pregen=2,score_Running_min=1000] ~ ~ ~ function uhc:pregen/endpregen


execute if entity @e[type=minecraft:armor_stand,tag=preuhc] run schedule function uhc:repeat/preuhc 1t

#test for start
#execute @e[score_start_min=1] ~ ~ ~ gamerule gameLoopFunction uhc:repeat/startinguhc
