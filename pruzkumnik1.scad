stoneW = 27;
stoneL = 27;
baseH = 2;
rimH = 2;
roofH = 35;
symbolL = 18;
symbolH = 1;
wall = 1;


ratio = 17.612/17.774; //(SVG X:Y ratio) 

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
translate([24, 2.5, baseH])
    difference(){
        resize([21,21,15])
            rotate([-65.8, 0, 0])
                translate([50, 35, 0])
                        import("cizi_pruzkumnik.stl", convexity = 5);

        translate([-29, -1, -31.995])
            cube([30,30,32]);

    }