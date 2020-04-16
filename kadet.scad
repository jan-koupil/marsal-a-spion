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

ratio = 12.768/17.58; //(SVG X:Y ratio) 
imageFile = "grafika/kadet.svg";

use <modules/stone.scad>;

stone(
    stoneW = stoneW,
    stoneL = stoneL,
    baseH = baseH,
    wall = wall,
    h1 = h1,
    alpha1 = alpha1,
    alpha2 = alpha2,
    alpha3 = alpha3
);


tileL = stoneL * sin(alpha1) / sin(180-alpha1-alpha2) - wall / cos(90-alpha1-alpha2);
echo (tileL);
color("red")
rotate([alpha2,0,0])
translate([(stoneW - symbolL * ratio) / 2,(tileL - symbolL) / 2,0])
    linear_extrude(height = symbolH, center = false, convexity = 10, twist = 0)
        resize([0,symbolL,0], auto=true)
            import(imageFile);
            