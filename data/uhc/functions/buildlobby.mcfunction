forceload add -16 -16 16 16
fill -12 239 -12 12 242 12 barrier hollow
fill -11 242 -11 11 242 11 air
setblock 12 238 12 minecraft:structure_block{showair:0b,sizeZ:25,posY:1,posX:-24,sizeY:4,seed:0L,integrity:1.0f,posZ:-24,sizeX:25,showboundingbox:1b,mode:"LOAD",mirror:"NONE",id:"Structure",author:"DryGaming",powered:0b,rotation:"NONE",name:"uhc:uhcspawn",ignoreEntities:0b,metadata:""} destroy
setblock 12 237 12 minecraft:redstone_block
fill 12 237 12 12 238 12 air

#outer box
fill 13 238 -13 -13 255 13 minecraft:barrier outline