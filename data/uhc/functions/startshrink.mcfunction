execute if entity @e[tag=main,scores={worldBordShrink=16,worldBordTime=20}] run worldborder set 16 1200
execute if entity @e[tag=main,scores={worldBordShrink=16,worldBordTime=40}] run worldborder set 16 2400
execute if entity @e[tag=main,scores={worldBordShrink=16,worldBordTime=60}] run worldborder set 16 3600
execute if entity @e[tag=main,scores={worldBordShrink=16,worldBordTime=90}] run worldborder set 16 5400

execute if entity @e[tag=main,scores={worldBordShrink=112,worldBordTime=20}] run worldborder set 112 1200 
execute if entity @e[tag=main,scores={worldBordShrink=112,worldBordTime=40}] run worldborder set 112 2400
execute if entity @e[tag=main,scores={worldBordShrink=112,worldBordTime=60}] run worldborder set 112 3600
execute if entity @e[tag=main,scores={worldBordShrink=112,worldBordTime=90}] run worldborder set 112 5400

execute if entity @e[tag=main,scores={worldBordShrink=208,worldBordTime=20}] run worldborder set 208 1200
execute if entity @e[tag=main,scores={worldBordShrink=208,worldBordTime=40}] run worldborder set 208 2400
execute if entity @e[tag=main,scores={worldBordShrink=208,worldBordTime=60}] run worldborder set 208 3600
execute if entity @e[tag=main,scores={worldBordShrink=208,worldBordTime=90}] run worldborder set 208 5400

#time 20=1200 40=2400 60=3600

scoreboard objectives remove worldBordDelay
scoreboard objectives remove worldBordTime
scoreboard objectives remove worldBordShrink
execute as @a at @s run function uhc:sound/minmarksound
execute as @a run function uhc:tellraws/shrinkinit