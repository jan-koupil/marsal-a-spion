symbol(
    symbolName = "general",
    symbolL = 18,
    yOffset = 0,
    symbolH = 1,
    tileW = 25,
    tryFix = true
);


module symbol(
    symbolName,
    symbolL,
    yOffset = 0,
    symbolH,
    tileW,
    dir = "../grafika/",
    
    tryFix = false
){    
    imageFile = str(dir, symbolName, ".svg");
    
    ratio = //(SVG X:Y ratio
        (symbolName == "prapor") ?
            19.096/19.459
        : (symbolName == "mina") ?
            17.612/17.774
        : (symbolName == "spion") ?
            21.701/17.294
        : (symbolName == "strelec") ?
            21.141/17.325
        : (symbolName == "pruzkumnik") ?
            17.304/17.619
        : (symbolName == "miner") ?
            20.970/16.346
        : (symbolName == "kadet") ?
            12.768/17.58
        : (symbolName == "kapral") ?
            15.082/16.98
        : (symbolName == "kapitan") ?
            12.3/19.249
        : (symbolName == "general") ?
            17.477/16.854
        : (symbolName == "marsal") ?
            19.489/18.707
        : 1;
        
    fixOffset = tryFix ? 0.05 : 0;
    
    color("red")
    translate([(tileW - symbolL * ratio) / 2, yOffset,0])
        linear_extrude(height = symbolH, center = false, convexity = 10, twist = 0)
            offset (r=fixOffset) offset (r=-fixOffset)
                resize([0, symbolL,0], auto=true)
                    import(imageFile);           
}