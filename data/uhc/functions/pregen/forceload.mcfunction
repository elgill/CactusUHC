execute if score Pregen pregen matches 1 run forceload add -750 -750 -725 750
execute if score Pregen pregen matches 2 run forceload add -725 -750 -700 750
execute if score Pregen pregen matches 3 run forceload add -700 -750 -675 750
execute if score Pregen pregen matches 4 run forceload add -675 -750 -650 750
execute if score Pregen pregen matches 5 run forceload add -650 -750 -625 750
execute if score Pregen pregen matches 6 run forceload add -625 -750 -600 750
execute if score Pregen pregen matches 7 run forceload add -600 -750 -575 750
execute if score Pregen pregen matches 8 run forceload add -575 -750 -550 750
execute if score Pregen pregen matches 9 run forceload add -550 -750 -525 750
execute if score Pregen pregen matches 10 run forceload add -525 -750 -500 750
execute if score Pregen pregen matches 11 run forceload add -500 -750 -475 750
execute if score Pregen pregen matches 12 run forceload add -475 -750 -450 750
execute if score Pregen pregen matches 13 run forceload add -450 -750 -425 750
execute if score Pregen pregen matches 14 run forceload add -425 -750 -400 750
execute if score Pregen pregen matches 15 run forceload add -400 -750 -375 750
execute if score Pregen pregen matches 16 run forceload add -375 -750 -350 750
execute if score Pregen pregen matches 17 run forceload add -350 -750 -325 750
execute if score Pregen pregen matches 18 run forceload add -325 -750 -300 750
execute if score Pregen pregen matches 19 run forceload add -300 -750 -275 750
execute if score Pregen pregen matches 20 run forceload add -275 -750 -250 750
execute if score Pregen pregen matches 21 run forceload add -250 -750 -225 750
execute if score Pregen pregen matches 22 run forceload add -225 -750 -200 750
execute if score Pregen pregen matches 23 run forceload add -200 -750 -175 750
execute if score Pregen pregen matches 24 run forceload add -175 -750 -150 750
execute if score Pregen pregen matches 25 run forceload add -150 -750 -125 750
execute if score Pregen pregen matches 26 run forceload add -125 -750 -100 750
execute if score Pregen pregen matches 27 run forceload add -100 -750 -75 750
execute if score Pregen pregen matches 28 run forceload add -75 -750 -50 750
execute if score Pregen pregen matches 29 run forceload add -50 -750 -25 750
execute if score Pregen pregen matches 30 run forceload add -25 -750 0 750
execute if score Pregen pregen matches 31 run forceload add 0 -750 25 750
execute if score Pregen pregen matches 32 run forceload add 25 -750 50 750
execute if score Pregen pregen matches 33 run forceload add 50 -750 75 750
execute if score Pregen pregen matches 34 run forceload add 75 -750 100 750
execute if score Pregen pregen matches 35 run forceload add 100 -750 125 750
execute if score Pregen pregen matches 36 run forceload add 125 -750 150 750
execute if score Pregen pregen matches 37 run forceload add 150 -750 175 750
execute if score Pregen pregen matches 38 run forceload add 175 -750 200 750
execute if score Pregen pregen matches 39 run forceload add 200 -750 225 750
execute if score Pregen pregen matches 40 run forceload add 225 -750 250 750
execute if score Pregen pregen matches 41 run forceload add 250 -750 275 750
execute if score Pregen pregen matches 42 run forceload add 275 -750 300 750
execute if score Pregen pregen matches 43 run forceload add 300 -750 325 750
execute if score Pregen pregen matches 44 run forceload add 325 -750 350 750
execute if score Pregen pregen matches 45 run forceload add 350 -750 375 750
execute if score Pregen pregen matches 46 run forceload add 375 -750 400 750
execute if score Pregen pregen matches 47 run forceload add 400 -750 425 750
execute if score Pregen pregen matches 48 run forceload add 425 -750 450 750
execute if score Pregen pregen matches 49 run forceload add 450 -750 475 750
execute if score Pregen pregen matches 50 run forceload add 475 -750 500 750
execute if score Pregen pregen matches 51 run forceload add 500 -750 525 750
execute if score Pregen pregen matches 52 run forceload add 525 -750 550 750
execute if score Pregen pregen matches 53 run forceload add 550 -750 575 750
execute if score Pregen pregen matches 54 run forceload add 575 -750 600 750
execute if score Pregen pregen matches 55 run forceload add 600 -750 625 750
execute if score Pregen pregen matches 56 run forceload add 625 -750 650 750
execute if score Pregen pregen matches 57 run forceload add 650 -750 675 750
execute if score Pregen pregen matches 58 run forceload add 675 -750 700 750
execute if score Pregen pregen matches 59 run forceload add 700 -750 725 750
execute if score Pregen pregen matches 60 run forceload add 725 -750 750 750
execute if score Pregen pregen matches 61 run forceload add 750 -750 775 750
execute unless score Pregen pregen matches 0 run schedule function uhc:pregen/forceload 3s
execute if score Pregen pregen matches 0 run function uhc:pregen/endpregen
#num*1639344/1000000
execute if score Pregen pregen matches 1.. run scoreboard players operation temp pregen = Pregen pregen
execute if score Pregen pregen matches 1.. run scoreboard players operation temp pregen *= mult pregen
execute if score Pregen pregen matches 1.. run scoreboard players operation temp pregen /= div pregen
execute if score Pregen pregen matches 1.. run scoreboard players operation Remaining UHC = temp pregen
execute if score Pregen pregen matches 1.. run scoreboard players remove Pregen pregen 1
forceload remove all