scoreboard objectives add tempplaycount dummy
scoreboard players set Players tempplaycount 0
execute as @a[tag=playing] run scoreboard players add Players tempplaycount 1
execute if score Players UHC < Players tempplaycount run scoreboard players operation Players UHC = Players tempplaycount
execute if score Players UHC > Players tempplaycount run scoreboard players operation Players UHC = Players tempplaycount
scoreboard objectives remove tempplaycount
scoreboard players set @e[tag=main] needPlayerCnt 0