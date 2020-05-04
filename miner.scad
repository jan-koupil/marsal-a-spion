use <modules/stone.scad>;

rotate ([0])
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

    symbolName = "miner",
    symbolL = scale(16),
    symbolYOffset = 2.85,
    symbolH = 1,
    tryFix = true
);    