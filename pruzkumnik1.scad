stoneW = 27;
stoneL = 27;
baseH = 2;
//rimH = 2;
//roofH = 35;
symbolL = 18;
symbolH = 1;
//wall = 1;


difference(){
    rotate([-65.7, 0, 0])
        translate([50, 35, 0])
            import("cizi_pruzkumnik.stl", convexity = 5);

    translate([-30, 0, -1.995])
        cube([30,30,2]);

}