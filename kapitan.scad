
stoneW = 27;
stoneL = 27;
baseH = 2;
rimH = 2;
roofH = 35;
symbolL = 19.249;
symbolH = 1;
wall = 1;


ratio = 12.3/19.249; //(SVG X:Y ratio)
moustacheY = 2.530;
moustacheX = 5.878;

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
            import("grafika/kapitan_base.svg");
            
translate([(stoneW - symbolL * ratio) / 2 + 3.3,(stoneL - symbolL) / 2 + 0.9,baseH])
    linear_extrude(height = symbolH, center = false, convexity = 10, twist = 0)
        resize([moustacheX,moustacheY, 0], auto=true)
            import("grafika/kapitan_knir.svg");            