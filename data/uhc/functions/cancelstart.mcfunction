#gamerule gameLoopFunction uhc:repeat/preuhc
title @a title ["",{"text":"Canceled!","color":"dark_red","bold":true}]
tag @e[limit=1,tag=main] remove starting
tag @e[limit=1,tag=main] add preuhc
schedule clear function uhc:repeat/showstarttime
schedule clear function uhc:repeat/startinguhc
function uhc:repeat/preuhc