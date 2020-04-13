//stone(    
//    stoneW = 27,
//    stoneL = 27,
//    baseH = 3,
//    wall = 1.5,
//    h1 = 20,
//    alpha1 = 60,
//    alpha2 = 30,
//    alpha3 = 15
//);


module stone(
    stoneW,
    stoneL,
    baseH,
    wall,
    h1,
    alpha1,
    alpha2,
    alpha3,
    safeSpace = 0.001,
    cropMinDim = 50
    
){
    
    cropThick = max(stoneL / cos(alpha1), cropMinDim);
    backL = h1 / sin(alpha1);
    midY = stoneL - h1 / tan(alpha1);
    roofL = stoneL / cos(alpha3) * 2;
    maxHeight = stoneL / cos(alpha1);
    
    symbolMaxL = stoneL / cos(alpha2);
    symbolThick = stoneL * sin(alpha2); 
    cropBackL = 2*stoneL / cos(alpha1);   
    
    difference() {
        union(){
            color("green")
            translate([0,0,-baseH])
                cube([stoneW, stoneL, baseH]);   
            
            color("red")
            translate([0,stoneL,0])
                rotate([-alpha1,0,0])
                    translate([0,-backL,-wall])
                        cube([stoneW, backL, wall]);
                
            color("cyan")    
            translate([0, midY, h1])
                rotate([-alpha3,0,0])
                    translate([0, -roofL, -wall])
                        cube([stoneW, roofL, wall]);
            
            color("magenta")
                cube([wall,stoneL, maxHeight]);

            color("magenta")
                translate([stoneL - wall,0,0])
                    cube([wall,stoneL, maxHeight]);


            color("yellow")
            rotate([alpha2,0,0])
                translate([0,0,-symbolThick])
                    cube([stoneW, symbolMaxL, symbolThick]);
        }

        translate([0,stoneL,0])
            rotate([-alpha1,0,0])
                translate([-safeSpace,-cropBackL,0])
                    cube([stoneW + 2*safeSpace, 2*cropBackL, cropThick]);          
                    
      
        translate([0, midY, h1])
            rotate([-alpha3,0,0])
                translate([-safeSpace, -roofL, 0])
                    cube([stoneW + 2*safeSpace, roofL, cropThick]); 

       
        translate([-safeSpace, -cropThick,0])
            cube([stoneW + 2*safeSpace, cropThick, maxHeight]);              
      
        translate([-safeSpace, 0, -cropThick-baseH])
            cube([stoneW + 2*safeSpace, stoneL, cropThick]); 
        
    }

}