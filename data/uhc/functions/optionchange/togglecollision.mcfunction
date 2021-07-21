execute as @e[tag=off,scores={teamCollision=1}] run scoreboard players set @e[tag=on] teamCollision 2
execute as @e[tag=on,scores={teamCollision=1}] run scoreboard players set @e[tag=off] teamCollision 2
scoreboard players remove @e[tag=toggle] teamCollision 1
function uhc:sound/select
execute as @e[tag=off,scores={teamCollision=1}] run team modify aqua collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify blue collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify dark_aqua collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify dark_blue collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify dark_green collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify dark_purple collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify dark_red collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify gold collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify green collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify light_purple collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify red collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify white collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify yellow collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify solo collisionRule never
execute as @e[tag=off,scores={teamCollision=1}] run team modify spectate collisionRule never
execute as @e[tag=on,scores={teamCollision=1}] run team modify aqua collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify blue collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify dark_aqua collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify dark_blue collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify dark_green collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify dark_purple collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify dark_red collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify gold collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify green collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify light_purple collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify red collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify white collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify yellow collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify solo collisionRule always
execute as @e[tag=on,scores={teamCollision=1}] run team modify spectate collisionRule always