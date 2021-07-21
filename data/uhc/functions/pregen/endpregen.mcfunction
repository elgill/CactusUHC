schedule clear uhc:pregen/forceload
execute as @a run function uhc:tellraws/pregenend
execute as @a run function uhc:sound/endcountdown
scoreboard players reset Pregen pregen
scoreboard players reset Remaining UHC
forceload remove all 
forceload add -16 -16 16 16