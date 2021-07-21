execute if entity @e[tag=off,scores={teamDamage=1}] run scoreboard players set @e[tag=on] teamDamage 2
execute if entity @e[tag=on,scores={teamDamage=1}] run scoreboard players set @e[tag=off] teamDamage 2
scoreboard players remove @e[tag=toggle] teamDamage 1
function uhc:sound/select

execute as @e[tag=on,scores={teamDamage=1}] run team modify aqua friendlyFire true
execute as @e[tag=on,scores={teamDamage=1}] run team modify blue friendlyFire true
execute as @e[tag=on,scores={teamDamage=1}] run team modify dark_aqua friendlyFire true
execute as @e[tag=on,scores={teamDamage=1}] run team modify dark_blue friendlyFire true
execute as @e[tag=on,scores={teamDamage=1}] run team modify dark_green friendlyFire true
execute as @e[tag=on,scores={teamDamage=1}] run team modify dark_purple friendlyFire true
execute as @e[tag=on,scores={teamDamage=1}] run team modify dark_red friendlyFire true
execute as @e[tag=on,scores={teamDamage=1}] run team modify gold friendlyFire true
execute as @e[tag=on,scores={teamDamage=1}] run team modify green friendlyFire true
execute as @e[tag=on,scores={teamDamage=1}] run team modify light_purple friendlyFire true
execute as @e[tag=on,scores={teamDamage=1}] run team modify red friendlyFire true
execute as @e[tag=on,scores={teamDamage=1}] run team modify white friendlyFire true
execute as @e[tag=on,scores={teamDamage=1}] run team modify yellow friendlyFire true
execute as @e[tag=on,scores={teamDamage=1}] run team modify spectate friendlyFire true
execute as @e[tag=off,scores={teamDamage=1}] run team modify aqua friendlyFire false
execute as @e[tag=off,scores={teamDamage=1}] run team modify blue friendlyFire false
execute as @e[tag=off,scores={teamDamage=1}] run team modify dark_aqua friendlyFire false
execute as @e[tag=off,scores={teamDamage=1}] run team modify dark_blue friendlyFire false
execute as @e[tag=off,scores={teamDamage=1}] run team modify dark_green friendlyFire false
execute as @e[tag=off,scores={teamDamage=1}] run team modify dark_purple friendlyFire false
execute as @e[tag=off,scores={teamDamage=1}] run team modify dark_red friendlyFire false
execute as @e[tag=off,scores={teamDamage=1}] run team modify gold friendlyFire false
execute as @e[tag=off,scores={teamDamage=1}] run team modify green friendlyFire false
execute as @e[tag=off,scores={teamDamage=1}] run team modify light_purple friendlyFire false
execute as @e[tag=off,scores={teamDamage=1}] run team modify red friendlyFire false
execute as @e[tag=off,scores={teamDamage=1}] run team modify white friendlyFire false
execute as @e[tag=off,scores={teamDamage=1}] run team modify yellow friendlyFire false
execute as @e[tag=off,scores={teamDamage=1}] run team modify spectate friendlyFire false