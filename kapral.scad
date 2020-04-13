
stoneW = 27;
stoneL = 27;
baseH = 2;
rimH = 2;
roofH = 35;
symbolL = 18;
symbolH = 1;
wall = 1;


ratio = 15.082/16.98; //(SVG X:Y ratio) 

use <modules/stone.scad>;

color("green")
stone(
    stoneW = stoneW,
    stoneL = stoneL,
    baseH = baseH,
    rimH = rimH,
    roofH = roofH,
    wall = wall
);

color("red")
translate([(stoneW - symbolL * ratio) / 2,(stoneL - symbolL) / 2,baseH])
    linear_extrude(height = symbolH, center = false, convexity = 10, twist = 0)
        resize([0,symbolL,0], auto=true)
            import("grafika/kapral.svg");