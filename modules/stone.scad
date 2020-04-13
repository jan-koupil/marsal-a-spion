module stone(
    stoneW,
    stoneL,
    baseH,
    rimH,
    roofH,
    wall,
    safeSpace = 0.001
){
    translate([wall, 0, baseH + rimH])
        rotate([0,-90,0])
            linear_extrude(height = wall, center = false, convexity = 10, twist = 0)
                polygon([[0,0],[roofH,0],[0,stoneL]],[[0,1,2]]);

    translate([stoneW, 0, baseH + rimH])
        rotate([0,-90,0])
            linear_extrude(height = wall, center = false, convexity = 10, twist = 0)
                polygon([[0,0],[roofH,0],[0,stoneL]],[[0,1,2]]);

    wallY = wall * roofH / stoneL;

    RoofPoints = [
      [ 0       , stoneL - wall ,  baseH + rimH ], //0
      [ stoneW  , stoneL - wall ,  baseH + rimH ], //1
      [ stoneW  , stoneL        ,  baseH + rimH ], //2
      [ 0       , stoneL        ,  baseH + rimH ], //3
      [ 0       , 0             ,  baseH + rimH + roofH - wallY ], //4
      [ stoneW  , 0             ,  baseH + rimH + roofH - wallY ], //5
      [ stoneW  , 0             ,  baseH + rimH + roofH ], //6
      [ 0       , 0             ,  baseH + rimH + roofH ]  //7
    ]; 
      
    RoofFaces = [
      [0,1,2,3],  // bottom
      [4,5,1,0],  // front
      [7,6,5,4],  // top
      [5,6,2,1],  // right
      [6,7,3,2],  // back
      [7,4,0,3]   // left
    ];

    polyhedron( RoofPoints, RoofFaces );

    difference(){
        cube([stoneW, stoneL, baseH+ rimH]);

        translate([wall, wall, baseH])
            cube([stoneW - 2*wall, stoneL - 2*wall, rimH + safeSpace]);
    }

}