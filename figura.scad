stoneW = 27;
stoneL = 27;
baseH = 4;
wall = 1.5;
h1 = 20;
alpha1 = 60;
alpha2 = 53;
alpha3 = 15;

symbolL = 16;
symbolH = 1;

ratio = 17.477/16.854; //(SVG X:Y ratio) 
imageFile = "grafika/general.svg";

use <modules/stone.scad>;
use <modules/symbol.scad>;

//color("green")
stone(
    stoneW = stoneW,
    stoneL = stoneL,
    baseH = baseH,
    wall = wall,
    h1 = h1,
    alpha1 = alpha1,
    alpha2 = alpha2,
    alpha3 = alpha3,
    hollow = false
);


tileL = stoneL * sin(alpha1) / sin(180-alpha1-alpha2) - wall / cos(90-alpha1-alpha2);

color("red")
rotate([alpha2,0,0])
    symbol(
        symbolName = "general",
        symbolL = symbolL,
        yOffset = 0,
        symbolH = symbolH,
        tileW = stoneW,
        tileL = tileL
    );

            