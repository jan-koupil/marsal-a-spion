
stoneW = 27;
stoneL = 27;
baseH = 2;
//rimH = 2;
//roofH = 35;
symbolL = 18;
symbolH = 1;
//wall = 1;



color("green")
    cube([stoneW, stoneL, 2]);

color("red")
    translate([-11, 42, baseH / 2])
        linear_extrude(
            height = symbolH+baseH / 2, 
            center = false, 
            convexity = 10, 
            twist = 0
        )
            resize([0,symbolL,0], auto=true)
                horse();
            
// Group ID: layer1
module horse() {
	// Group ID: g27
	union() {
		// Group ID: Layer_x0020_1
		union() {
			// Path ID: Pruzkumnik
			difference() {
				bezier_polygon([[[69.04049160000001, -61.67434295], [67.34752356, -61.133533715000006], [67.51211767500001, -59.910834575], [66.195364755, -59.887321130000004]], [[66.195364755, -59.887321130000004], [65.34888073500001, -60.804345485000006], [65.63104207500001, -61.20407405], [65.67806896500001, -62.80298831]], [[65.67806896500001, -62.80298831], [64.220235375, -62.473800080000004], [59.21187159, -57.95921864], [59.89376149500001, -61.180560605000004]], [[59.89376149500001, -61.180560605000004], [59.89376149500001, -61.180560605000004], [61.304568195, -64.566496685], [61.304568195, -64.566496685]], [[61.304568195, -64.566496685], [61.304568195, -64.566496685], [58.106739675, -69.62188736], [58.106739675, -69.62188736]], [[58.106739675, -69.62188736], [57.23674221, -70.3743176], [56.507825415, -70.585938605], [55.96701618, -71.73809741000001]], [[55.96701618, -71.73809741000001], [55.02647838, -73.689713345], [56.131610295, -73.90133435], [55.96701618, -75.45322172]], [[55.96701618, -75.45322172], [55.96701618, -75.45322172], [54.06242713500001, -75.899977175], [54.06242713500001, -75.899977175]], [[54.06242713500001, -75.899977175], [54.250534695000006, -78.03970067], [55.543774170000006, -78.110241005], [57.119174985, -78.95672502500001]], [[57.119174985, -78.95672502500001], [57.119174985, -78.95672502500001], [54.132967470000004, -82.74238967000001], [54.132967470000004, -82.74238967000001]], [[54.132967470000004, -82.74238967000001], [52.5810801, -83.75346780500001], [53.215943115, -82.03698632000001], [50.723517945000005, -86.198866085]], [[50.723517945000005, -86.198866085], [48.748388565000006, -89.49074838500002], [51.664055745000006, -86.38697364500001], [49.47730536, -90.83101475000001]], [[49.47730536, -90.83101475000001], [48.630821340000004, -92.54749623500001], [48.01947177, -94.052356715], [48.53676756, -96.28613399000001]], [[48.53676756, -96.28613399000001], [49.124603685000004, -98.77855916000001], [50.065141485000005, -99.20180117000001], [50.65297761, -100.82422887500002]], [[50.65297761, -100.82422887500002], [51.546488520000004, -103.22260026500001], [50.65297761, -104.28070529000001], [53.968373355000004, -104.09259773000002]], [[53.968373355000004, -104.09259773000002], [56.76647331, -103.95151706000001], [59.56457326500001, -106.67907668000002], [61.845377430000006, -101.64719945000002]], [[61.845377430000006, -101.64719945000002], [61.845377430000006, -101.64719945000002], [62.762401785, -100.49504064500002], [62.762401785, -100.49504064500002]], [[62.762401785, -100.49504064500002], [62.762401785, -100.49504064500002], [63.58537236, -102.86989859000002], [63.58537236, -102.86989859000002]], [[63.58537236, -102.86989859000002], [65.113746285, -102.705304475], [66.242391645, -101.12990366], [66.83022777000001, -100.70666165]], [[66.83022777000001, -100.70666165], [67.20644289, -100.42450031], [67.53563112, -100.35395997500001], [67.95887313, -100.09531208000001]], [[67.95887313, -100.09531208000001], [68.217521025, -98.07315581], [67.371037005, -98.002615475], [67.06536222, -96.16856676500001]], [[67.06536222, -96.16856676500001], [68.19400758, -95.48667686000002], [70.051569735, -94.42857183500001], [71.862105, -94.26397772000001]], [[71.862105, -94.26397772000001], [71.885618445, -95.08694829500001], [71.62697055000001, -95.67478442000001], [71.95615878000001, -96.38018777]], [[71.95615878000001, -96.38018777], [73.76669404500001, -96.75640289], [74.54263773, -96.47424155000002], [75.882904095, -96.05099954]], [[75.882904095, -96.05099954], [76.32965955, -103.22260026500001], [75.130473855, -107.43150692], [79.645055295, -113.380408505]], [[79.645055295, -113.380408505], [80.25640486500001, -114.179865635], [80.303431755, -114.509053865], [81.54964434, -114.60310764500001]], [[81.54964434, -114.60310764500001], [84.27720396000001, -109.242042185], [87.68665348500001, -111.61690013], [95.163928995, -104.821514525]], [[95.163928995, -104.821514525], [95.493117225, -104.56286663], [95.728251675, -104.32773218], [96.03392646, -104.069084285]], [[96.03392646, -104.069084285], [96.762843255, -103.457734715], [96.26906091000001, -103.55178849500001], [97.11554493000001, -103.55178849500001]], [[97.11554493000001, -103.55178849500001], [97.468246605, -107.43150692], [95.37555, -109.43014974500001], [95.540144115, -111.05257745]], [[95.540144115, -111.05257745], [96.92743737, -111.123117785], [100.94823646500001, -108.27799094000001], [101.93580115500001, -105.19772964500001]], [[101.93580115500001, -105.19772964500001], [104.47525321500001, -97.29721212500002], [98.62040541, -91.72452566000001], [100.383913785, -82.906983785]], [[100.383913785, -82.906983785], [101.01877680000001, -79.68564182], [102.52363728, -75.758896505], [102.80579862, -72.53755454]], [[102.80579862, -72.53755454], [103.06444651500001, -69.64540080500001], [101.982828045, -69.739454585], [100.45445412000001, -68.563782335]], [[100.45445412000001, -68.563782335], [98.99662053, -67.45865042], [99.913644885, -67.45865042], [96.856897035, -65.78919582500001]], [[96.856897035, -65.78919582500001], [95.37555, -64.989738695], [94.505552535, -64.237308455], [92.765557605, -63.46136477]], [[92.765557605, -63.46136477], [90.555293775, -62.473800080000004], [89.802863535, -60.192995915000004], [84.206663625, -59.181917780000006]], [[84.206663625, -59.181917780000006], [82.278561135, -58.829216105], [80.32694520000001, -59.558132900000004], [78.422356155, -59.81678079500001]], [[78.422356155, -59.81678079500001], [74.613178065, -60.287049695], [72.44994112500001, -57.042194285], [69.04049160000001, -61.67434295]], [[69.04049160000001, -61.67434295], [69.04049160000001, -61.67434295], [69.04049160000001, -61.67434295], [69.04049160000001, -61.67434295]], [[69.04049160000001, -61.67434295], [69.04049160000001, -61.67434295], [69.04049160000001, -61.67434295], [69.04049160000001, -61.67434295]]]);
				bezier_polygon([[[58.671062355000004, -99.03720705500001], [59.25889848, -100.23639275000001], [58.459441350000006, -99.93071796500001], [57.119174985, -101.97638768]], [[57.119174985, -101.97638768], [56.601879195, -102.752331365], [56.62539264, -102.28206246500001], [56.67241953, -103.01097926]], [[56.67241953, -103.01097926], [58.55349513, -103.410707825], [59.188358145, -102.91692548], [59.91727494, -101.81179356500002]], [[59.91727494, -101.81179356500002], [60.269976615000004, -101.294497775], [61.727810205000004, -98.87261294000001], [61.845377430000006, -98.59045160000001]], [[61.845377430000006, -98.59045160000001], [61.234027860000005, -98.04964236500001], [61.304568195, -97.95558858500002], [60.693218625, -97.46180624000002]], [[60.693218625, -97.46180624000002], [59.658627045, -98.519911265], [60.48159762, -98.37883059500001], [58.671062355000004, -99.03720705500001]], [[58.671062355000004, -99.03720705500001], [58.671062355000004, -99.03720705500001], [58.671062355000004, -99.03720705500001], [58.671062355000004, -99.03720705500001]], [[58.671062355000004, -99.03720705500001], [58.671062355000004, -99.03720705500001], [58.671062355000004, -99.03720705500001], [58.671062355000004, -99.03720705500001]]]);
				bezier_polygon([[[64.90212528, -93.44100714500001], [65.23131351, -94.146410495], [65.60752863, -94.49911217], [66.101310975, -94.96938107]], [[66.101310975, -94.96938107], [68.5702227, -93.79370882], [66.524552985, -94.005329825], [72.14426634, -91.98317355500001]], [[72.14426634, -91.98317355500001], [72.14426634, -91.98317355500001], [72.12075289500001, -88.19750891000001], [72.12075289500001, -88.19750891000001]], [[72.12075289500001, -88.19750891000001], [71.57994366, -88.19750891000001], [65.18428662, -93.08830547000001], [64.90212528, -93.44100714500001]], [[64.90212528, -93.44100714500001], [64.90212528, -93.44100714500001], [64.90212528, -93.44100714500001], [64.90212528, -93.44100714500001]], [[64.90212528, -93.44100714500001], [64.90212528, -93.44100714500001], [64.90212528, -93.44100714500001], [64.90212528, -93.44100714500001]]]);
				bezier_polygon([[[72.37940079, -80.29699139], [68.33508825000001, -81.731311535], [69.769408395, -86.76318876500001], [73.43750581500001, -86.292919865]], [[73.43750581500001, -86.292919865], [77.45830491000001, -85.79913752], [75.177500745, -79.285913255], [72.37940079, -80.29699139]], [[72.37940079, -80.29699139], [72.37940079, -80.29699139], [72.37940079, -80.29699139], [72.37940079, -80.29699139]], [[72.37940079, -80.29699139], [72.37940079, -80.29699139], [72.37940079, -80.29699139], [72.37940079, -80.29699139]]]);
				bezier_polygon([[[57.072148095, -77.33429732], [57.072148095, -77.33429732], [58.388901015, -77.61645866], [58.388901015, -77.61645866]], [[58.388901015, -77.61645866], [59.07079092, -73.736740235], [59.423492595, -73.54863267500001], [61.65726987000001, -71.59701674]], [[61.65726987000001, -71.59701674], [65.019692505, -68.65783611500001], [63.11510346, -70.96215372500001], [63.820506810000005, -68.93999745500001]], [[63.820506810000005, -68.93999745500001], [64.267262265, -67.764325205], [65.489961405, -67.38811008500001], [66.054284085, -66.42405884]], [[66.054284085, -66.42405884], [66.054284085, -66.42405884], [65.63104207500001, -64.80163113500001], [65.63104207500001, -64.80163113500001]], [[65.63104207500001, -64.80163113500001], [64.361316045, -64.989738695], [62.527267335000005, -65.883249605], [61.98645810000001, -66.588652955]], [[61.98645810000001, -66.588652955], [61.351595085, -67.41162353], [61.13997408, -69.034051235], [60.034842165, -70.23323693]], [[60.034842165, -70.23323693], [59.23538503500001, -71.12674784000001], [57.61295733, -71.479449515], [57.777551445, -73.61917301]], [[57.777551445, -73.61917301], [57.848091780000004, -74.6067377], [58.36538757, -74.93592593000001], [58.27133379, -75.71186961500001]], [[58.27133379, -75.71186961500001], [58.177280010000004, -76.72294775], [57.589443885, -76.58186708000001], [57.072148095, -77.33429732]], [[57.072148095, -77.33429732], [57.072148095, -77.33429732], [57.072148095, -77.33429732], [57.072148095, -77.33429732]], [[57.072148095, -77.33429732], [57.072148095, -77.33429732], [57.072148095, -77.33429732], [57.072148095, -77.33429732]]]);
				bezier_polygon([[[73.813720935, -78.862671245], [74.63669151, -78.25132167500001], [75.036420075, -77.61645866], [75.41263519500001, -76.81700153]], [[75.41263519500001, -76.81700153], [70.78048653, -72.11431253], [73.672640265, -68.751889895], [72.23832012, -65.930276495]], [[72.23832012, -65.930276495], [72.23832012, -65.930276495], [71.76805122, -66.494599175], [71.76805122, -66.494599175]], [[71.76805122, -66.494599175], [70.945080645, -67.764325205], [71.43886299, -68.093513435], [69.83994873, -68.39918822]], [[69.83994873, -68.39918822], [69.83994873, -68.39918822], [68.99346471, -66.18892439000001], [68.99346471, -66.18892439000001]], [[68.99346471, -66.18892439000001], [68.687789925, -65.318926925], [68.546709255, -64.566496685], [67.81779246, -64.47244290500001]], [[67.81779246, -64.47244290500001], [67.27698322500001, -64.895684915], [67.51211767500001, -64.54298324], [67.44157734000001, -65.365953815]], [[67.44157734000001, -65.365953815], [67.27698322500001, -67.31756975], [69.5107605, -69.38675291], [70.568865525, -71.54998985]], [[70.568865525, -71.54998985], [71.25075543, -72.91376966], [73.22588481, -78.204294785], [73.813720935, -78.862671245]], [[73.813720935, -78.862671245], [73.813720935, -78.862671245], [73.813720935, -78.862671245], [73.813720935, -78.862671245]], [[73.813720935, -78.862671245], [73.813720935, -78.862671245], [73.813720935, -78.862671245], [73.813720935, -78.862671245]]]);
				bezier_polygon([[[52.39297254, -102.98746581500001], [55.261612830000004, -103.29314060000002], [56.531338860000005, -100.35395997500001], [57.89511867, -98.94315327500001]], [[57.89511867, -98.94315327500001], [57.848091780000004, -98.896126385], [57.777551445, -98.75504571500001], [57.754038, -98.802072605]], [[57.754038, -98.802072605], [57.56593044, -99.20180117000001], [57.495390105000006, -98.54342471000001], [57.47187666000001, -98.49639782000001]], [[57.47187666000001, -98.49639782000001], [56.837013645, -97.69694069000002], [56.62539264, -96.262620545], [57.63647077500001, -95.557217195]], [[57.63647077500001, -95.557217195], [57.63647077500001, -95.557217195], [58.92971025, -94.945867625], [58.92971025, -94.945867625]], [[58.92971025, -94.945867625], [58.318360680000005, -93.37046681000001], [57.401336325, -92.59452312500001], [56.272690965, -91.701012215]], [[56.272690965, -91.701012215], [55.097018715000004, -90.760474415], [54.39161536500001, -89.866963505], [52.76918766, -89.39669460500001]], [[52.76918766, -89.39669460500001], [51.217300290000004, -90.525339965], [49.759466700000004, -93.11181891500001], [50.065141485000005, -96.00397265000001]], [[50.065141485000005, -96.00397265000001], [50.206222155000006, -97.344239015], [50.676491055, -98.472884375], [51.26432718, -99.38990873]], [[51.26432718, -99.38990873], [52.157838090000006, -100.777201985], [52.040270865000004, -101.22395744000002], [52.39297254, -102.98746581500001]], [[52.39297254, -102.98746581500001], [52.39297254, -102.98746581500001], [52.39297254, -102.98746581500001], [52.39297254, -102.98746581500001]], [[52.39297254, -102.98746581500001], [52.39297254, -102.98746581500001], [52.39297254, -102.98746581500001], [52.39297254, -102.98746581500001]]]);
				bezier_polygon([[[51.59351541, -87.75075345500001], [52.25189187, -88.503183695], [52.651620435000005, -88.43264336], [53.545131345, -88.85588537000001]], [[53.545131345, -88.85588537000001], [58.482954795000005, -91.16020298000001], [59.39997915000001, -94.616679395], [61.116460635, -96.709376]], [[61.116460635, -96.709376], [62.033484990000005, -97.83802136], [63.138616905000006, -98.68450538], [63.655912695000005, -100.33044653]], [[63.655912695000005, -100.33044653], [63.655912695000005, -100.33044653], [66.6891471, -98.519911265], [66.6891471, -98.519911265]], [[66.6891471, -98.519911265], [66.26590509, -95.90991887000001], [64.07915470500001, -94.59316595000001], [63.232670685, -92.80614413]], [[63.232670685, -92.80614413], [64.10266815, -90.97209542], [69.81643528500001, -88.24453580000001], [70.568865525, -86.41048709]], [[70.568865525, -86.41048709], [70.568865525, -86.41048709], [69.83994873, -85.65805685000001], [69.83994873, -85.65805685000001]], [[69.83994873, -85.65805685000001], [68.89941093, -85.89319130000001], [66.61860676500001, -87.844807235], [65.819149635, -88.52669714000001]], [[65.819149635, -88.52669714000001], [65.160773175, -89.09101982], [64.502396715, -89.443721495], [63.844020255000004, -90.00804417500001]], [[63.844020255000004, -90.00804417500001], [63.06807657, -90.713447525], [62.80942867500001, -91.20722987], [61.5161892, -91.25425676]], [[61.5161892, -91.25425676], [61.18700097, -90.64290719], [61.18700097, -90.61939374500001], [61.18700097, -89.772909725]], [[61.18700097, -89.772909725], [60.29349006, -90.290205515], [60.34051695, -89.302640825], [57.754038, -87.303998]], [[57.754038, -87.303998], [56.531338860000005, -86.339946755], [55.285126275, -85.07022072500001], [53.56864479, -84.62346527]], [[53.56864479, -84.62346527], [52.816214550000005, -85.18778795], [51.73459608, -86.64562154000001], [51.59351541, -87.75075345500001]], [[51.59351541, -87.75075345500001], [51.59351541, -87.75075345500001], [51.59351541, -87.75075345500001], [51.59351541, -87.75075345500001]], [[51.59351541, -87.75075345500001], [51.59351541, -87.75075345500001], [51.59351541, -87.75075345500001], [51.59351541, -87.75075345500001]]]);
				bezier_polygon([[[55.332153165, -83.75346780500001], [55.332153165, -83.75346780500001], [60.175922835, -88.07994168500001], [60.175922835, -88.07994168500001]], [[60.175922835, -88.07994168500001], [60.834299295, -88.66777781], [61.13997408, -89.208587045], [61.84537743, -89.72588283500001]], [[61.84537743, -89.72588283500001], [63.044563125, -89.302640825], [68.734816815, -84.599951825], [68.781843705, -84.552924935]], [[68.781843705, -84.552924935], [69.205085715, -83.96508881], [68.89941093, -84.62346527], [69.08751849000001, -83.753467805]], [[69.08751849000001, -83.753467805], [69.13454538, -83.51833335500001], [69.15805882500001, -83.142118235], [69.22859916, -82.83644345]], [[69.22859916, -82.83644345], [69.393193275, -82.107526655], [69.5107605, -81.91941909500001], [69.86346217500001, -81.37860986000001]], [[69.86346217500001, -81.37860986000001], [70.63940586000001, -80.20293761], [70.898053755, -80.39104517000001], [70.16913696, -78.627536795]], [[70.16913696, -78.627536795], [69.111031935, -76.06457129], [67.25346978, -72.72566210000001], [65.30185384500001, -71.056207505]], [[65.30185384500001, -71.056207505], [64.267262265, -71.432422625], [62.80942867500001, -72.702148655], [62.17456566, -73.43106545]], [[62.17456566, -73.43106545], [60.881326185000006, -74.912412485], [60.834299295, -74.81835870500001], [60.269976615000004, -77.122676315]], [[60.269976615000004, -77.122676315], [59.635113600000004, -79.87374938], [56.648906085, -80.60266617500001], [55.332153165, -83.75346780500001]], [[55.332153165, -83.75346780500001], [55.332153165, -83.75346780500001], [55.332153165, -83.75346780500001], [55.332153165, -83.75346780500001]], [[55.332153165, -83.75346780500001], [55.332153165, -83.75346780500001], [55.332153165, -83.75346780500001], [55.332153165, -83.75346780500001]]]);
				bezier_polygon([[[81.80829223500001, -110.72338922], [83.548287165, -109.806364865], [82.18450735500001, -110.04149931500001], [87.05179047000001, -107.90177582000001]], [[87.05179047000001, -107.90177582000001], [89.92043076, -106.63204979000001], [94.71717354, -102.84638514500001], [95.869332345, -100.730175095]], [[95.869332345, -100.730175095], [96.41014158000002, -99.76612385000001], [96.01041301500001, -98.66099193500001], [95.72825167500001, -97.579373465]], [[95.72825167500001, -97.579373465], [95.58717100500002, -97.08559112], [95.46960378000001, -96.685862555], [95.23446933000001, -96.16856676500001]], [[95.23446933000001, -96.16856676500001], [95.23446933000001, -96.16856676500001], [94.34095842000002, -94.89884073500001], [94.34095842000002, -94.89884073500001]], [[94.34095842000002, -94.89884073500001], [92.38934248500001, -96.63883566500002], [92.62447693500002, -98.519911265], [91.98961392000001, -101.294497775]], [[91.98961392000001, -101.294497775], [90.74340133500002, -100.871255765], [91.73096602500001, -100.9417961], [90.367186215, -98.91963983]], [[90.367186215, -98.91963983], [87.404492145, -94.45208528], [90.884482005, -90.87804163999999], [90.34367277000001, -89.74939628]], [[90.34367277000001, -89.74939628], [90.34367277000001, -89.74939628], [87.21638458500001, -95.01640796000001], [87.21638458500001, -95.01640796000001]], [[87.21638458500001, -95.01640796000001], [85.64098377, -98.16720959], [86.416927455, -98.990180165], [85.73503755000002, -102.04692801499999]], [[85.73503755000002, -102.04692801499999], [84.300717405, -102.23503557499998], [83.57180061, -100.68314820500001], [82.91342415, -99.977744855]], [[82.91342415, -99.977744855], [79.05721917000001, -95.745324755], [82.889910705, -89.067506375], [82.86639726000001, -87.20994422]], [[82.86639726000001, -87.20994422], [81.62018467500002, -87.86832068], [81.45559056000002, -89.067506375], [80.75018721, -90.243178625]], [[80.75018721, -90.243178625], [76.68236122500001, -89.13804671], [82.44315525000002, -82.718876225], [79.692082185, -79.521047705]], [[79.692082185, -79.521047705], [75.92993098500001, -81.33158297], [79.033705725, -82.93049723], [76.494253665, -86.41048709]], [[76.494253665, -86.41048709], [75.76533687000001, -87.374538335], [75.788850315, -89.443721495], [75.85939065000001, -90.97209542]], [[75.85939065000001, -90.97209542], [75.92993098500001, -92.9472248], [76.89398223, -91.98317355500001], [77.55235869, -94.381544945]], [[77.55235869, -94.381544945], [78.42235615500002, -97.626400355], [77.15263012500002, -105.31529687], [81.10288888500001, -110.041499315]], [[81.10288888500001, -110.041499315], [81.10288888500001, -110.041499315], [81.80829223500001, -110.72338922], [81.80829223500001, -110.72338922]], [[81.80829223500001, -110.72338922], [81.80829223500001, -110.72338922], [81.80829223500001, -110.72338922], [81.80829223500001, -110.72338922]]]);
				bezier_polygon([[[70.615892415, -63.790553], [71.979672225, -64.190281565], [74.07236883, -63.249743765000005], [74.519124285, -68.65783611500001]], [[74.519124285, -68.65783611500001], [74.848312515, -72.749175545], [75.05993352000002, -73.43106545], [77.55235869, -75.21808727000001]], [[77.55235869, -75.21808727000001], [78.82208472, -76.13511162500001], [79.19829984, -75.97051751000001], [80.23289142000002, -77.07564942500001]], [[80.23289142000002, -77.07564942500001], [81.05586199500001, -77.94564689], [81.71423845500001, -78.83915780000001], [82.01991324000001, -80.10888383000001]], [[82.01991324000001, -80.10888383000001], [82.77234348000002, -83.001037565], [80.56207965000002, -85.540489625], [80.58559309500001, -87.93886101500001]], [[80.58559309500001, -87.93886101500001], [80.58559309500001, -87.93886101500001], [82.86639726000001, -85.32886862000001], [82.86639726000001, -85.32886862000001]], [[82.86639726000001, -85.32886862000001], [83.59531405500002, -84.43535771], [82.889910705, -84.74103249500001], [83.94801573000001, -84.52941149]], [[83.94801573000001, -84.52941149], [86.04071233500002, -86.17535264], [84.01855606500001, -89.23210049000001], [83.87747539500002, -89.53777527500002]], [[83.87747539500002, -89.53777527500002], [82.96045104000001, -91.60695843500002], [81.87883257000001, -97.15613145500001], [84.30071740500001, -99.06072050000002]], [[84.30071740500001, -99.06072050000002], [85.42936276500001, -93.13533236], [87.42800559000003, -92.57100968000002], [88.72124506500002, -89.81993661500002]], [[88.72124506500002, -89.81993661500002], [89.56772908500002, -87.98588790500001], [89.07394674000001, -87.68021312000002], [89.42664841500002, -86.01075852500001]], [[89.42664841500002, -86.01075852500001], [91.56637191000002, -85.91670474500002], [92.36582904000002, -88.85588537000001], [92.22474837000001, -91.20722987000002]], [[92.22474837000001, -91.20722987000002], [92.08366770000003, -93.41749370000002], [90.27313243500004, -95.65127097500002], [91.40177779500002, -98.02612892000002]], [[91.40177779500002, -98.02612892000002], [92.57745004500002, -97.03856423], [92.60096349000003, -94.31100461000001], [94.88176765500002, -93.01776513500002]], [[94.88176765500002, -93.01776513500002], [96.76284325500002, -93.91127604500002], [97.25662560000002, -97.22667179000001], [97.75040794500002, -99.48396251000001]], [[97.75040794500002, -99.48396251000001], [98.47932474000001, -102.82287170000001], [98.29121718000002, -104.35124562500002], [97.86797517000002, -107.64312792500002]], [[97.86797517000002, -107.64312792500002], [98.92608019500003, -106.46745567500001], [99.34932220500002, -106.06772711], [99.96067177500002, -104.25719184500001]], [[99.96067177500002, -104.25719184500001], [101.91228771000002, -98.61396504500001], [99.13770120000001, -96.356674325], [97.86797517000002, -90.92506853]], [[97.86797517000002, -90.92506853], [97.02149115, -87.37453833500001], [97.56230038500001, -83.96508881], [98.267703735, -80.743746845]], [[98.267703735, -80.743746845], [99.04364742000001, -77.216730095], [100.21931967, -74.70079148], [100.336886895, -71.056207505]], [[100.336886895, -71.056207505], [98.173649955, -70.115669705], [95.84581890000001, -67.67027142500001], [94.082310525, -66.42405884]], [[94.082310525, -66.42405884], [92.69501727, -65.43649415], [91.42529124, -65.648115155], [90.037997985, -64.848658025]], [[90.037997985, -64.848658025], [88.65070473, -64.049200895], [88.86232573500001, -63.226230320000006], [87.00476358, -62.285692520000005]], [[87.00476358, -62.285692520000005], [82.25504769, -59.887321130000004], [81.50261745, -62.285692520000005], [77.575872135, -62.121098405000005]], [[77.575872135, -62.121098405000005], [75.741823425, -62.027044625], [70.427784855, -58.570568210000005], [70.615892415, -63.790553]], [[70.615892415, -63.790553], [70.615892415, -63.790553], [70.615892415, -63.790553], [70.615892415, -63.790553]], [[70.615892415, -63.790553], [70.615892415, -63.790553], [70.615892415, -63.790553], [70.615892415, -63.790553]]]);
			}
			bezier_polygon([[[51.96973053, -97.39126590500001], [53.639185125000004, -96.685862555], [50.582437275000004, -98.237749925], [52.628106990000006, -96.920997005]], [[52.628106990000006, -96.920997005], [53.004322110000004, -96.66234911000001], [52.698647325, -96.685862555], [53.357023785, -96.52126844]], [[53.357023785, -96.52126844], [54.485669145, -99.24882806], [52.839727995000004, -99.50747595500002], [53.262970005, -100.84774232000001]], [[53.262970005, -100.84774232000001], [54.955938045, -100.118825525], [56.037556515000006, -96.80342978], [54.744317040000006, -94.8283004]], [[54.744317040000006, -94.8283004], [52.816214550000005, -91.86560633], [49.430278470000005, -95.039921405], [51.96973053, -97.39126590500001]], [[51.96973053, -97.39126590500001], [51.96973053, -97.39126590500001], [51.96973053, -97.39126590500001], [51.96973053, -97.39126590500001]], [[51.96973053, -97.39126590500001], [51.96973053, -97.39126590500001], [51.96973053, -97.39126590500001], [51.96973053, -97.39126590500001]]]);
			bezier_polygon([[[60.29349006, -82.08401321], [61.46916231, -82.107526655], [61.304568195, -81.80185187000001], [62.104025325, -81.21401574500001]], [[62.104025325, -81.21401574500001], [66.33644542500001, -82.295634215], [65.37239418, -79.82672249000001], [65.70158241, -78.439429235]], [[65.70158241, -78.439429235], [65.98374375, -77.33429732], [66.31293198, -78.27483512], [66.6891471, -76.793488085]], [[66.6891471, -76.793488085], [62.621321115, -76.67592086], [60.24646317, -79.756182155], [60.29349006, -82.08401321]], [[60.29349006, -82.08401321], [60.29349006, -82.08401321], [60.29349006, -82.08401321], [60.29349006, -82.08401321]], [[60.29349006, -82.08401321], [60.29349006, -82.08401321], [60.29349006, -82.08401321], [60.29349006, -82.08401321]]]);
		}
	}
}

/**
 * Stripped down version of "bezier_v2.scad".
 * For full version, see: https://www.thingiverse.com/thing:2170645
 */

function BEZ03(u) = pow((1-u), 3);
function BEZ13(u) = 3*u*(pow((1-u),2));
function BEZ23(u) = 3*(pow(u,2))*(1-u);
function BEZ33(u) = pow(u,3);

function bezier_2D_point(p0, p1, p2, p3, u) = [
	BEZ03(u)*p0[0]+BEZ13(u)*p1[0]+BEZ23(u)*p2[0]+BEZ33(u)*p3[0],
	BEZ03(u)*p0[1]+BEZ13(u)*p1[1]+BEZ23(u)*p2[1]+BEZ33(u)*p3[1]
];

function bezier_coordinates(points, steps) = [
	for (c = points)
		for (step = [0:steps])
			bezier_2D_point(c[0], c[1], c[2],c[3], step/steps)
];

module bezier_polygon(points) {
	steps = $fn <= 0 ? 30 : $fn;
	polygon(bezier_coordinates(points, steps));
}
            