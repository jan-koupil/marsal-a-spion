use <modules/stone.scad>;

stone(    
    stoneW = 27,
    stoneL = 27,
    baseH = 4,
    wall = 1.5,
    h1 = 20,
    alpha1 = 60,
    alpha2 = 89.999,
    alpha3 = 15,

    hollow = true,
    tileDeep = 5,

    symbolName = "mina",
    symbolL = scale(15.7),
    symbolYOffset = 3.25,
    symbolH = 1,
    tryFix = true
);    