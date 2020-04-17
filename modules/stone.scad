stone(    
    stoneW = 27,
    stoneL = 27,
    baseH = 3,
    wall = 1.5,
    h1 = 20,
    alpha1 = 60,
    alpha2 = 89.999,
    alpha3 = 15,
    tileDeep = 5,
    hollow = false,
    
    symbolName = "general",
    symbolL = 18,
    symbolYOffset = 2,
    symbolH = 1,
    tryFix = false
);

use <symbol.scad>; 

module stone(
    stoneW,
    stoneL,
    baseH,
    wall,
    h1,
    alpha1,
    alpha2,
    alpha3,
    tileDeep = 0,
    safeSpace = 0.001,
    cropMinDim = 50,
    hollow = true, //fill in the "stone"

    symbolName,
    symbolL,
    symbolYOffset,
    symbolH,
    tryFix
){    
    cropThick = max(stoneL / cos(alpha1), cropMinDim);
    backL = h1 / sin(alpha1);
    midY = stoneL - h1 / tan(alpha1);
    roofL = stoneL / cos(alpha3) * 2;
    maxHeight = stoneL / cos(alpha1);
    
    symbolMaxL = min(abs(stoneL / cos(alpha2)), 2*stoneL);
    symbolThick = max (stoneL * sin(alpha2), stoneL); 
    cropBackL = 2*stoneL / cos(alpha1);   
    
    rotate ([180+alpha1,0,180])
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

            tileThick = hollow ? wall : symbolThick;

            translate([0,tileDeep,0])
                rotate([alpha2,0,0])
                    
                    
                    union(){
                        color("yellow")
                        translate([0,0,-tileThick]) 
                            cube([stoneW, symbolMaxL, tileThick]);
                        symbol(
                            symbolName = symbolName,
                            symbolL = symbolL,
                            yOffset = symbolYOffset ,
                            symbolH = symbolH,
                            tileW = stoneW,
                            tryFix = tryFix
                        );
                    };
        }

        translate([0,stoneL,0])
            rotate([-alpha1,0,0])
                translate([-safeSpace,-cropBackL,0])
                    cube([stoneW + 2*safeSpace, 2*cropBackL, cropThick]);          
                    
      
        translate([0, midY, h1])
            rotate([-alpha3,0,0])
                translate([-safeSpace, -roofL, 0])
                    cube([stoneW + 2*safeSpace, roofL, cropThick]); 

       
        translate([-safeSpace, -cropThick, - maxHeight])
            cube([stoneW + 2*safeSpace, cropThick, 2 * maxHeight]);              
      
        translate([-safeSpace, -safeSpace, -cropThick-baseH])
            cube([stoneW + 2*safeSpace, stoneL + 2*safeSpace, cropThick]); 

        translate([-safeSpace, stoneL, -cropThick-baseH])
            cube([stoneW + 2*safeSpace, 3*stoneL, 2 *cropThick]); 
        
    }

}