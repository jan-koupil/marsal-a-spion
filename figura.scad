stoneW = 27;
stoneL = 27;
baseH = 4;
wall = 1.5;
h1 = 20;
alpha1 = 60;
alpha2 = 89.9;
alpha3 = 15;

hollow = true;
tileDeep = 5;

symbolName = "general";
symbolL = 16;
symbolYOffset = 2.5;
symbolH = 1;

use <modules/stone.scad>;


stone(    
    stoneW = stoneW,
    stoneL = stoneL,
    baseH = baseH,
    wall = wall,
    h1 = h1,
    alpha1 = alpha1,
    alpha2 = alpha2,
    alpha3 = alpha3,
    tileDeep = tileDeep,
    hollow = hollow,
    
    symbolName = symbolName,
    symbolL = symbolL,
    symbolYOffset = symbolYOffset,
    symbolH = symbolH
);    