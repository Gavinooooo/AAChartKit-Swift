//
//  MixedChartVC.swift
//  AAInfographicsDemo
//
//  Created by AnAn on 2018/4/10.
//  Copyright © 2018年 An An. All rights reserved.
//*************** ...... SOURCE CODE ...... ***************
//***...................................................***
//*** https://github.com/AAChartModel/AAChartKit        ***
//*** https://github.com/AAChartModel/AAChartKit-Swift  ***
//***...................................................***
//*************** ...... SOURCE CODE ...... ***************

/*
 
 *********************************************************************************
 *
 *  🌕 🌖 🌗 🌘  ❀❀❀   WARM TIPS!!!   ❀❀❀ 🌑 🌒 🌓 🌔
 *
 * Please contact me on GitHub,if there are any problems encountered in use.
 * GitHub Issues : https://github.com/AAChartModel/AAChartKit-Swift/issues
 * -------------------------------------------------------------------------------
 * And if you want to contribute for this project, please contact me as well
 * GitHub        : https://github.com/AAChartModel
 * StackOverflow : https://stackoverflow.com/users/7842508/codeforu
 * JianShu       : https://www.jianshu.com/u/f1e6753d4254
 * SegmentFault  : https://segmentfault.com/u/huanghunbieguan
 *
 *********************************************************************************
 */

import UIKit

class MixedChartVC: UIViewController {
    open var chartType: String!
    open var aaChartModel: AAChartModel!
    open var aaChartView: AAChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = chartType
        
        setUpAAChartView()
    }
    
   private func setUpAAChartView() {
        aaChartView = AAChartView()
        let chartWidth = view.frame.size.width
        let chartHeight = view.frame.size.height
        aaChartView!.frame = CGRect(x: 0,
                                    y: 60,
                                    width: chartWidth,
                                    height: chartHeight)
        aaChartView!.contentHeight = view.frame.size.height - 80
        view.addSubview(aaChartView!)
        aaChartView!.scrollEnabled = false
        
        aaChartModel = configureTheAAChartModel(chartType!)
        aaChartView!.aa_drawChartWithChartModel(aaChartModel!)
    }
    
   private func configureTheAAChartModel(_ chartTypeStr:String) -> AAChartModel {
        switch chartTypeStr {
        case "arearangeMixedLine":return configureArearangeMixedLineChart()
        case "columnrangeMixedLine":return configureColumnrangeMixedLineChart()
        case "stackingColumnMixedLine":return configureStackingColumnMixedLineChart()
        case "dashStyleTypeMixed":return configureDashStyleTypesMixedChart()
        case "negativeColorMixed":return configureNegativeColorMixedChart()
        case "scatterMixedLine":return configureScatterMixedLineChart()
        case "negativeColorMixedBubble":return configureNegativeColorMixedBubbleChart()
        case "polygonMixedScatter":return configurePolygonMixedScatterChart()
        case "polarChartMixed":return configurePolarChartMixedChart()
        case "columnMixedScatter":return configureColumnMixedScatterChart()
        case "PieMixeLineMixedColumn":return configurePieMixedLineMixedColumnChart()
        case "LineChartWithShadow":return configureLineChartWithShadow()
        default: return configureArearangeMixedLineChart()
        }
    }
    
    private func configureArearangeMixedLineChart() -> AAChartModel {
        //http://jsfiddle.net/7L6n922w/1/
        return AAChartModel()
            .title("LANGUAGE MARKET SHARES JANUARY,2020 TO MAY")
            .subtitle("virtual data")
            .series([
                AASeriesElement()
                    .name("Temperature")
                    .color("#1E90FF")
                    .type(.line)
                    .data([
                        [12464064, 21.5],
                        [12464928, 22.1],
                        [12465792,   23],
                        [12466656, 23.8],
                        [12467520, 21.4],
                        [12468384, 21.3],
                        [12469248, 18.3],
                        [12470112, 15.4],
                        [12470976, 16.4],
                        [12471840, 17.7],
                        [12472704, 17.5],
                        [12473568, 17.6],
                        [12474432, 17.7],
                        [12475296, 16.8],
                        [12476160, 17.7],
                        [12477024, 16.3],
                        [12477888, 17.8],
                        [12478752, 18.1],
                        [12479616, 17.2],
                        [12480480, 14.4],
                        [12481344, 13.7],
                        [12482208, 15.7],
                        [12483072, 14.6],
                        [12483936, 15.3],
                        [12484800, 15.3],
                        [12485664, 15.8],
                        [12486528, 15.2],
                        [12487392, 14.8],
                        [12488256, 14.4],
                        [12489120,   15],
                        [12489984, 13.6]
                        ])
                    .zIndex(1)
                    .marker(
                        AAMarker()
                            .radius(5)
                            .fillColor("#1E90FF")
                            .lineWidth(2.0)
                    )
                    ,
                AASeriesElement()
                    .name("Range")
                    .color("#1E90FF")
                    .type(.arearange)
                    .lineWidth(0)
                    .fillOpacity(0.3)
                    .data([
                        [12464064, 14.3, 27.7],
                        [12464928, 14.5, 27.8],
                        [12465792, 15.5, 29.6],
                        [12466656, 16.7, 30.7],
                        [12467520, 16.5, 25.0],
                        [12468384, 17.8, 25.7],
                        [12469248, 13.5, 24.8],
                        [12470112, 10.5, 21.4],
                        [12470976, 9.2,  23.8],
                        [12471840, 11.6, 21.8],
                        [12472704, 10.7, 23.7],
                        [12473568, 11.0, 23.3],
                        [12474432, 11.6, 23.7],
                        [12475296, 11.8, 20.7],
                        [12476160, 12.6, 22.4],
                        [12477024, 13.6, 19.6],
                        [12477888, 11.4, 22.6],
                        [12478752, 13.2, 25.0],
                        [12479616, 14.2, 21.6],
                        [12480480, 13.1, 17.1],
                        [12481344, 12.2, 15.5],
                        [12482208, 12.0, 20.8],
                        [12483072, 12.0, 17.1],
                        [12483936, 12.7, 18.3],
                        [12484800, 12.4, 19.4],
                        [12485664, 12.6, 19.9],
                        [12486528, 11.9, 20.2],
                        [12487392, 11.0, 19.3],
                        [12488256, 10.8, 17.8],
                        [12489120, 11.8, 18.5],
                        [12489984, 10.8, 16.1]
                        ])
                    .zIndex(0)
                    ,
                ])
    }
    
    private func configureColumnrangeMixedLineChart() -> AAChartModel {
        return AAChartModel()
            .colorsTheme(["#1e90ff","#EA007B", "#49C1B6", "#FDC20A", "#F78320", "#068E81",])//主题颜色数组
            .title("")//图形标题
            .subtitle("")//图形副标题
            .chartType(.line)
            .dataLabelsEnabled(false)
            .markerSymbolStyle(.borderBlank)
            .series([
                AASeriesElement()
                    .name("Temperature")
                    .type(.columnrange)
                    .data([
                        [(-9.7), 9.4],
                        [(-8.7), 6.5],
                        [(-3.5), 9.4],
                        [(-1.4),19.9],
                        [0.0 ,  22.6],
                        [2.9 ,  29.5],
                        [9.2 ,  30.7],
                        [7.3 ,  26.5],
                        [4.4 ,  18.0],
                        [(-3.1),11.4],
                        [(-5.2),10.4],
                        [(-9.9),16.8]
                        ])
                    ,
                AASeriesElement()
                    .name("Tokyo")
                    .data([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6])
                    ,
                AASeriesElement()
                    .name("New York")
                    .data([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5])
                    ,
                AASeriesElement()
                    .name("Berlin")
                    .data([0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0])
                    ,
                AASeriesElement()
                    .name("London")
                    .data([3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8])
                    ,
                ])
    }
    
    private func configureStackingColumnMixedLineChart() -> AAChartModel {
        return AAChartModel()
            .title("16年1月-16年11月充值客单分析")//图形标题
            .subtitle("BY MICVS")//图形副标题
            .chartType(.column)
            .stacking(.normal)
            .legendEnabled(true)
            .colorsTheme([
                AAColor.darkGray,
                AAColor.gray,
                AAColor.lightGray,
            ])
            .series([
                AASeriesElement()
                    .name("新用户")
                    .data([82.89, 67.54, 62.07, 59.43, 67.02, 67.09, 35.66, 71.78, 81.61, 78.85, 79.12, 72.30])
                    .dataLabels(AADataLabels()
                        .enabled(true)
                        .style(AAStyle()
                            .color(AAColor.red)
                            .fontSize(11)
                        )
                    )
                    ,
                
                AASeriesElement()
                    .name("老用户")
                    .data([198.66, 330.81, 151.95, 160.12, 222.56, 229.05, 128.53, 250.91, 224.47, 473.99, 126.85, 260.50])
                    .dataLabels(AADataLabels()
                        .enabled(true)
                        .style(AAStyle()
                            .color(AAColor.green)
                            .fontSize(11)
                        )
                    )
                    ,
                
                AASeriesElement()
                    .name("总量")
                    .type(.line)
                    .data([281.55, 398.35, 214.02, 219.55, 289.57, 296.14, 164.18, 322.69, 306.08, 552.84, 205.97, 332.79])
                    .dataLabels(AADataLabels()
                        .enabled(true)
                        .style(AAStyle()
                            .color(AAColor.blue)
                            .fontSize(15)
                        )
                    )
                    ,
                ])
    }
    
    private func configureDashStyleTypesMixedChart() -> AAChartModel {
        return AAChartModel()
            .chartType(.spline)//图形类型
            .dataLabelsEnabled(false)//是否显示数字
            .stacking(.normal)
            .markerRadius(0)
            .series([
                AASeriesElement()
                    .name("Solid")
                    .lineWidth(3)
                    .data([50, 320, 230, 370, 230, 400,])
                    ,
                AASeriesElement()
                    .name("Dash")
                    .lineWidth(3)
                    .dashStyle(.dash)
                    .data([50, 320, 230, 370, 230, 400,])
                    ,
                AASeriesElement()
                    .name("DashDot")
                    .lineWidth(3)
                    .dashStyle(.dashDot)
                    .data([50, 320, 230, 370, 230, 400,])
                    ,
                AASeriesElement()
                    .name("LongDash")
                    .lineWidth(3)
                    .dashStyle(.longDash)
                    .data([50, 320, 230, 370, 230, 400,])
                    ,
                AASeriesElement()
                    .name("LongDashDot")
                    .lineWidth(3)
                    .dashStyle(.longDashDot)
                    .data([50, 320, 230, 370, 230, 400,])
                    ,
                ])
    }
    
    private func configureNegativeColorMixedChart() -> AAChartModel {
        return AAChartModel()
            .dataLabelsEnabled(false)//是否显示数字
            .series([
                AASeriesElement()
                    .name("Column")
                    .type(.column)
                    .data([-6.4, -5.2, -3.0, 0.2, 2.3, 5.5, 8.4, 8.3, 5.1, 0.9, -1.1, -4.0,
                           -6.4, -5.2, -3.0, 0.2, 2.3, 5.5, 8.4, 8.3, 5.1, 0.9, -1.1, -4.0,
                           -6.4, -5.2, -3.0, 0.2, 2.3, 5.5, 8.4, 8.3, 5.1, 0.9, -1.1, -4.0,])
                    .color("#0088FF")
                    .negativeColor("#FF0000")
                    .threshold(4)//default:0
                    ,
                ])
    }
    
    private func configureScatterMixedLineChart() -> AAChartModel {
        return AAChartModel()
            .dataLabelsEnabled(false)//是否显示数字
            .chartType(.scatter)
            .markerSymbolStyle(.innerBlank)
            .markerSymbol(.circle)
            .markerRadius(10)
            .series([
                AASeriesElement()
                    .name("观测值")
                    .data([
                        [0.067732, 3.176513],
                        [0.42781,  3.816464],
                        [0.995731, 4.550095],
                        [0.738336, 4.256571],
                        [0.981083, 4.560815],
                        [0.526171, 3.929515],
                        [0.378887,  3.52617],
                        [0.033859, 3.156393],
                        [0.132791, 3.110301],
                        [0.138306, 3.149813],
                        [0.247809, 3.476346],
                        [0.64827,  4.119688],
                        [0.731209, 4.282233],
                        [0.236833, 3.486582],
                        [0.969788, 4.655492],
                        [0.607492, 3.965162],
                        [0.358622,   3.5149],
                        [0.147846, 3.125947],
                        [0.63782,  4.094115],
                        [0.230372, 3.476039],
                        [0.070237,  3.21061],
                        [0.067154, 3.190612],
                        [0.925577, 4.631504],
                        [0.717733,  4.29589],
                        [0.015371, 3.085028],
                        [0.33507,   3.44808],
                        [0.040486,  3.16744],
                        [0.212575, 3.364266],
                        [0.617218, 3.993482],
                        [0.541196, 3.891471],
                        [0.045353, 3.143259],
                        [0.126762, 3.114204],
                        [0.556486, 3.851484],
                        [0.901144, 4.621899],
                        [0.958476, 4.580768],
                        [0.274561, 3.620992],
                        [0.394396, 3.580501],
                        [0.87248,  4.618706],
                        [0.409932, 3.676867],
                        [0.908969, 4.641845],
                        [0.166819, 3.175939],
                        [0.665016,  4.26498],
                        [0.263727, 3.558448],
                        [0.231214, 3.436632],
                        [0.552928, 3.831052],
                        [0.047744, 3.182853],
                        [0.365746, 3.498906],
                        [0.495002, 3.946833],
                        [0.493466, 3.900583],
                        [0.792101, 4.238522],
                        [0.76966,   4.23308],
                        [0.251821, 3.521557],
                        [0.181951, 3.203344],
                        [0.808177, 4.278105],
                        [0.334116, 3.555705],
                        [0.33863,  3.502661],
                        [0.452584, 3.859776],
                        [0.69477,  4.275956],
                        [0.590902, 3.916191],
                        [0.307928, 3.587961],
                        [0.148364, 3.183004],
                        [0.70218,  4.225236],
                        [0.721544, 4.231083],
                        [0.666886, 4.240544],
                        [0.124931, 3.222372],
                        [0.618286, 4.021445],
                        [0.381086, 3.567479],
                        [0.385643,  3.56258],
                        [0.777175, 4.262059],
                        [0.116089, 3.208813],
                        [0.115487, 3.169825],
                        [0.66351,  4.193949],
                        [0.254884, 3.491678],
                        [0.993888, 4.533306],
                        [0.295434, 3.550108],
                        [0.952523, 4.636427],
                        [0.307047, 3.557078],
                        [0.277261, 3.552874],
                        [0.279101, 3.494159],
                        [0.175724, 3.206828],
                        [0.156383, 3.195266],
                        [0.733165, 4.221292],
                        [0.848142, 4.413372],
                        [0.771184, 4.184347],
                        [0.429492, 3.742878],
                        [0.162176, 3.201878],
                        [0.917064, 4.648964],
                        [0.315044, 3.510117],
                        [0.201473, 3.274434],
                        [0.297038, 3.579622],
                        [0.336647, 3.489244],
                        [0.666109, 4.237386],
                        [0.583888, 3.913749],
                        [0.085031,  3.22899],
                        [0.687006, 4.286286],
                        [0.949655, 4.628614],
                        [0.189912, 3.239536],
                        [0.844027, 4.457997],
                        [0.333288, 3.513384],
                        [0.427035, 3.729674],
                        [0.466369, 3.834274],
                        [0.550659, 3.811155],
                        [0.278213, 3.598316],
                        [0.918769, 4.692514],
                        [0.886555, 4.604859],
                        [0.569488, 3.864912],
                        [0.066379, 3.184236],
                        [0.335751, 3.500796],
                        [0.426863, 3.743365],
                        [0.395746, 3.622905],
                        [0.694221, 4.310796],
                        [0.27276,  3.583357],
                        [0.503495, 3.901852],
                        [0.067119, 3.233521],
                        [0.038326, 3.105266],
                        [0.599122, 3.865544],
                        [0.947054, 4.628625],
                        [0.671279, 4.231213],
                        [0.434811, 3.791149],
                        [0.509381, 3.968271],
                        [0.749442,  4.25391],
                        [0.058014,  3.19471],
                        [0.482978, 3.996503],
                        [0.466776, 3.904358],
                        [0.357767, 3.503976],
                        [0.949123, 4.557545],
                        [0.41732,  3.699876],
                        [0.920461, 4.613614],
                        [0.156433, 3.140401],
                        [0.656662, 4.206717],
                        [0.616418, 3.969524],
                        [0.853428, 4.476096],
                        [0.133295, 3.136528],
                        [0.693007, 4.279071],
                        [0.178449, 3.200603],
                        [0.199526, 3.299012],
                        [0.073224, 3.209873],
                        [0.286515, 3.632942],
                        [0.182026, 3.248361],
                        [0.621523, 3.995783],
                        [0.344584, 3.563262],
                        [0.398556, 3.649712],
                        [0.480369, 3.951845],
                        [0.15335,  3.145031],
                        [0.171846, 3.181577],
                        [0.867082, 4.637087],
                        [0.223855, 3.404964],
                        [0.528301, 3.873188],
                        [0.890192, 4.633648],
                        [0.106352, 3.154768],
                        [0.917886, 4.623637],
                        [0.014855, 3.078132],
                        [0.567682, 3.913596],
                        [0.068854, 3.221817],
                        [0.603535, 3.938071],
                        [0.53205,  3.880822],
                        [0.651362, 4.176436],
                        [0.901225, 4.648161],
                        [0.204337, 3.332312],
                        [0.696081, 4.240614],
                        [0.963924, 4.532224],
                        [0.98139,  4.557105],
                        [0.987911, 4.610072],
                        [0.990947, 4.636569],
                        [0.736021, 4.229813],
                        [0.253574,  3.50086],
                        [0.674722, 4.245514],
                        [0.939368, 4.605182],
                        [0.235419,  3.45434],
                        [0.110521, 3.180775],
                        [0.218023,  3.38082],
                        [0.869778,  4.56502],
                        [0.19683,  3.279973],
                        [0.958178, 4.554241],
                        [0.972673,  4.63352],
                        [0.745797, 4.281037],
                        [0.445674, 3.844426],
                        [0.470557, 3.891601],
                        [0.549236, 3.849728],
                        [0.335691, 3.492215],
                        [0.884739, 4.592374],
                        [0.918916, 4.632025],
                        [0.441815,  3.75675],
                        [0.116598, 3.133555],
                        [0.359274, 3.567919],
                        [0.814811, 4.363382],
                        [0.387125, 3.560165],
                        [0.982243, 4.564305],
                        [0.78088,  4.215055],
                        [0.652565, 4.174999],
                        [0.87003,   4.58664],
                        [0.604755, 3.960008],
                        [0.255212, 3.529963],
                        [0.730546, 4.213412],
                        [0.493829, 3.908685],
                        [0.257017, 3.585821],
                        [0.833735, 4.374394],
                        [0.070095, 3.213817],
                        [0.52707,  3.952681],
                        [0.116163, 3.129283]
                        ])
                    .color("#0088FF")
                    ,
                AASeriesElement()
                    .type(.line)
                    .name("线性回归线")
                    .data([[0.014, 3.078], [0.969, 4.655]])
                    .color("#FF0000")
                ])
    }
    
    private func configureNegativeColorMixedBubbleChart() -> AAChartModel {
        return AAChartModel()
            .categories(["Saturday", "Friday", "Thursday","Wednesday", "Tuesday", "Monday", "Sunday"])
            .series([
                AASeriesElement()
                    .name("Bubble")
                    .type(.bubble)
                    .data([
                        [0,0,5],[0,1,1],[0,2,0],[0,3,0],[0,4,0],[0,5,0],[0,6,0],[0,7,0],[0,8,0],[0,9,0],
                        [0,10,0],[0,11,2],[0,12,4],[0,13,1],[0,14,1],[0,15,3],[0,16,4],[0,17,6],[0,18,4],
                        [0,19,4],[0,20,3],[0,21,3],[0,22,2],[0,23,5],[1,0,7],[1,1,0],[1,2,0],[1,3,0],
                        [1,4,0],[1,5,0],[1,6,0],[1,7,0],[1,8,0],[1,9,0],[1,10,5],[1,11,2],[1,12,2],
                        [1,13,6],[1,14,9],[1,15,11],[1,16,6],[1,17,7],[1,18,8],[1,19,12],[1,20,5],[1,21,5],
                        [1,22,7],[1,23,2],[2,0,1],[2,1,1],[2,2,0],[2,3,0],[2,4,0],[2,5,0],[2,6,0],[2,7,0],
                        [2,8,0],[2,9,0],[2,10,3],[2,11,2],[2,12,1],[2,13,9],[2,14,8],[2,15,10],[2,16,6],
                        [2,17,5],[2,18,5],[2,19,5],[2,20,7],[2,21,4],[2,22,2],[2,23,4],[3,0,7],[3,1,3],
                        [3,2,0],[3,3,0],[3,4,0],[3,5,0],[3,6,0],[3,7,0],[3,8,1],[3,9,0],[3,10,5],[3,11,4],
                        [3,12,7],[3,13,14],[3,14,13],[3,15,12],[3,16,9],[3,17,5],[3,18,5],[3,19,10],
                        [3,20,6],[3,21,4],[3,22,4],[3,23,1],[4,0,1],[4,1,3],[4,2,0],[4,3,0],[4,4,0],
                        [4,5,1],[4,6,0],[4,7,0],[4,8,0],[4,9,2],[4,10,4],[4,11,4],[4,12,2],[4,13,4],
                        [4,14,4],[4,15,14],[4,16,12],[4,17,1],[4,18,8],[4,19,5],[4,20,3],[4,21,7],[4,22,3],
                        [4,23,0],[5,0,2],[5,1,1],[5,2,0],[5,3,3],[5,4,0],[5,5,0],[5,6,0],[5,7,0],[5,8,2],
                        [5,9,0],[5,10,4],[5,11,1],[5,12,5],[5,13,10],[5,14,5],[5,15,7],[5,16,11],[5,17,6],
                        [5,18,0],[5,19,5],[5,20,3],[5,21,4],[5,22,2],[5,23,0],[6,0,1],[6,1,0],[6,2,0],
                        [6,3,0],[6,4,0],[6,5,0],[6,6,0],[6,7,0],[6,8,0],[6,9,0],[6,10,1],[6,11,0],[6,12,2],
                        [6,13,1],[6,14,3],[6,15,4],[6,16,0],[6,17,0],[6,18,0],[6,19,0],[6,20,1],[6,21,2],
                        [6,22,2],[6,23,6]
                        ])
                    .color("#0088FF")
                    .negativeColor("#FF0000")
                    .threshold(4)//default:0
                    ,
                ])
    }
    
    private func configurePolygonMixedScatterChart() -> AAChartModel {
        return AAChartModel()
            .series([
                AASeriesElement()
                    .name("目标")
                    .type(.polygon)
                    .data([[153, 42], [149, 46], [149, 55], [152, 60], [159, 70], [170, 77], [180, 70],
                           [180, 60], [173, 52], [166, 45]])
                    .color("rgba(119, 152, 191, 0.5)")
                    ,
                AASeriesElement()
                    .name("实际值")
                    .type(.scatter)
                    .data([
                        [161.2, 51.6], [167.5, 59.0], [159.5, 49.2], [157.0, 63.0], [155.8, 53.6],
                        [170.0, 59.0], [159.1, 47.6], [166.0, 69.8], [176.2, 66.8], [160.2, 75.2],
                        [172.5, 55.2], [170.9, 54.2], [172.9, 62.5], [153.4, 42.0], [160.0, 50.0],
                        [147.2, 49.8], [168.2, 49.2], [175.0, 73.2], [157.0, 47.8], [167.6, 68.8],
                        [159.5, 50.6], [175.0, 82.5], [166.8, 57.2], [176.5, 87.8], [170.2, 72.8],
                        [174.0, 54.5], [173.0, 59.8], [179.9, 67.3], [170.5, 67.8], [160.0, 47.0],
                        [154.4, 46.2], [162.0, 55.0], [176.5, 83.0], [160.0, 54.4], [152.0, 45.8],
                        [162.1, 53.6], [170.0, 73.2], [160.2, 52.1], [161.3, 67.9], [166.4, 56.6],
                        [168.9, 62.3], [163.8, 58.5], [167.6, 54.5], [160.0, 50.2], [161.3, 60.3],
                        [167.6, 58.3], [165.1, 56.2], [160.0, 50.2], [170.0, 72.9], [157.5, 59.8],
                        [167.6, 61.0], [160.7, 69.1], [163.2, 55.9], [152.4, 46.5], [157.5, 54.3],
                        [168.3, 54.8], [180.3, 60.7], [165.5, 60.0], [165.0, 62.0], [164.5, 60.3],
                        [156.0, 52.7], [160.0, 74.3], [163.0, 62.0], [165.7, 73.1], [161.0, 80.0],
                        [162.0, 54.7], [166.0, 53.2], [174.0, 75.7], [172.7, 61.1], [167.6, 55.7],
                        [151.1, 48.7], [164.5, 52.3], [163.5, 50.0], [152.0, 59.3], [169.0, 62.5],
                        [164.0, 55.7], [161.2, 54.8], [155.0, 45.9], [170.0, 70.6], [176.2, 67.2],
                        [170.0, 69.4], [162.5, 58.2], [170.3, 64.8], [164.1, 71.6], [169.5, 52.8],
                        [163.2, 59.8], [154.5, 49.0], [159.8, 50.0], [173.2, 69.2], [170.0, 55.9],
                        [161.4, 63.4], [169.0, 58.2], [166.2, 58.6], [159.4, 45.7], [162.5, 52.2],
                        [159.0, 48.6], [162.8, 57.8], [159.0, 55.6], [179.8, 66.8], [162.9, 59.4],
                        [161.0, 53.6], [151.1, 73.2], [168.2, 53.4], [168.9, 69.0], [173.2, 58.4],
                        [171.8, 56.2], [178.0, 70.6], [164.3, 59.8], [163.0, 72.0], [168.5, 65.2],
                        [166.8, 56.6], [172.7, 105 ], [163.5, 51.8], [169.4, 63.4], [167.8, 59.0],
                        [159.5, 47.6], [167.6, 63.0], [161.2, 55.2], [160.0, 45.0], [163.2, 54.0],
                        [162.2, 50.2], [161.3, 60.2], [149.5, 44.8], [157.5, 58.8], [163.2, 56.4],
                        [172.7, 62.0], [155.0, 49.2], [156.5, 67.2], [164.0, 53.8], [160.9, 54.4],
                        [162.8, 58.0], [167.0, 59.8], [160.0, 54.8], [160.0, 43.2], [168.9, 60.5],
                        [158.2, 46.4], [156.0, 64.4], [160.0, 48.8], [167.1, 62.2], [158.0, 55.5],
                        [167.6, 57.8], [156.0, 54.6], [162.1, 59.2], [173.4, 52.7], [159.8, 53.2],
                        [170.5, 64.5], [159.2, 51.8], [157.5, 56.0], [161.3, 63.6], [162.6, 63.2],
                        [160.0, 59.5], [168.9, 56.8], [165.1, 64.1], [162.6, 50.0], [165.1, 72.3],
                        [166.4, 55.0], [160.0, 55.9], [152.4, 60.4], [170.2, 69.1], [162.6, 84.5],
                        [170.2, 55.9], [158.8, 55.5], [172.7, 69.5], [167.6, 76.4], [162.6, 61.4],
                        [167.6, 65.9], [156.2, 58.6], [175.2, 66.8], [172.1, 56.6], [162.6, 58.6],
                        [160.0, 55.9], [165.1, 59.1], [182.9, 81.8], [166.4, 70.7], [165.1, 56.8],
                        [177.8, 60.0], [165.1, 58.2], [175.3, 72.7], [154.9, 54.1], [158.8, 49.1],
                        [172.7, 75.9], [168.9, 55.0], [161.3, 57.3], [167.6, 55.0], [165.1, 65.5],
                        [175.3, 65.5], [157.5, 48.6], [163.8, 58.6], [167.6, 63.6], [165.1, 55.2],
                        [165.1, 62.7], [168.9, 56.6], [162.6, 53.9], [164.5, 63.2], [176.5, 73.6],
                        [168.9, 62.0], [175.3, 63.6], [159.4, 53.2], [160.0, 53.4], [170.2, 55.0],
                        [162.6, 70.5], [167.6, 54.5], [162.6, 54.5], [160.7, 55.9], [160.0, 59.0],
                        [157.5, 63.6], [162.6, 54.5], [152.4, 47.3], [170.2, 67.7], [165.1, 80.9],
                        [172.7, 70.5], [165.1, 60.9], [170.2, 63.6], [170.2, 54.5], [170.2, 59.1],
                        [161.3, 70.5], [167.6, 52.7], [167.6, 62.7], [165.1, 86.3], [162.6, 66.4],
                        [152.4, 67.3], [168.9, 63.0], [170.2, 73.6], [175.2, 62.3], [175.2, 57.7],
                        [160.0, 55.4], [165.1, 104 ], [174.0, 55.5], [170.2, 77.3], [160.0, 80.5],
                        [167.6, 64.5], [167.6, 72.3], [167.6, 61.4], [154.9, 58.2], [162.6, 81.8],
                        [175.3, 63.6], [171.4, 53.4], [157.5, 54.5], [165.1, 53.6], [160.0, 60.0],
                        [174.0, 73.6], [162.6, 61.4], [174.0, 55.5], [162.6, 63.6], [161.3, 60.9],
                        [156.2, 60.0], [149.9, 46.8], [169.5, 57.3], [160.0, 64.1], [175.3, 63.6],
                        [169.5, 67.3], [160.0, 75.5], [172.7, 68.2], [162.6, 61.4], [157.5, 76.8],
                        [176.5, 71.8], [164.4, 55.5], [160.7, 48.6], [174.0, 66.4], [163.8, 67.3]
                        ])
                    .color("#ff0000")
                    ,
                ])
    }
    
    private func configurePolarChartMixedChart() -> AAChartModel {
        return AAChartModel()
            .chartType(.column)
            .polar(true)
            .series([
                AASeriesElement()
                    .name("Column")
                    .type(.column)
                    .data([8, 7, 6, 5, 4, 3, 2, 1])
                    ,
                AASeriesElement()
                    .name("Line")
                    .type(.line)
                    .data([1, 2, 3, 4, 5, 6, 7, 8])
                    ,
                AASeriesElement()
                    .name("Area")
                    .type(.area)
                    .data([1, 8, 2, 7, 3, 6, 4, 5])
                    ,
                ])
    }
    
    private func configureColumnMixedScatterChart() -> AAChartModel {
        return AAChartModel()
            .xAxisReversed(true)
            .series([
                AASeriesElement()
                    .name("Column")
                    .type(.column)
                    .data([
                        8,NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),
                        7,NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),
                        6,NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),
                        5,NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),
                        4,NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),
                        3,NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),
                        2,NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),NSNull(),
                        1])
                    ,
                AASeriesElement()
                    .name("Scatter")
                    .type(.scatter)
                    .data([3.5, 3, 3.2, 3.1, 3.6, 3.9, 3.4, 3.4, 2.9, 3.1, 3.7, 3.4, 3, 3.3, 4, 4.4, 3.9, 3.5, 3.8, 3.8, 3.4, 3.7, 3.6, 3.3,
                           3.4, 3, 3.4, 3.5, 3.4, 3.2, 3.1, 3.4, 4.1, 4.2, 3.1, 3.2, 3.5, 3.6, 3, 3.4, 3.5, 2.3, 3.2, 3.5, 3.8, 3, 3.8, 3.2,
                           3.7, 3.3, 3.2, 3.2, 3.1, 2.3, 2.8, 2.8, 3.3, 2.4, 2.9, 2.7, 2, 3, 2.2, 2.9, 2.9, 3.1, 3, 2.7, 2.2, 2.5, 3.2, 2.8,
                           2.5, 2.8, 2.9, 3, 2.8, 3, 2.9, 2.6, 2.4, 2.4, 2.7, 2.7, 3, 3.4, 3.1, 2.3, 3, 2.5, 2.6, 3.6, 2.6, 2.3, 2.7, 3, 2.9,
                           2.9, 2.5, 2.8, 3.3, 2.7, 3, 2.9, 3, 3, 2.5, 2.9, 2.5, 3.6, 3.2, 2.7, 3, 2.5, 2.8, 3.2, 3, 3.8, 2.6, 2.2, 3.2, 2.8,
                           2.8, 2.7, 3.3, 3.2, 2.8, 3, 2.8, 3, 2.8, 3.8, 2.8, 2.8, 2.6, 3, 3.4, 3.1, 3, 3.1, 3.1, 3.1, 2.7, 3.2, 3.3, 3, 2.5,
                           3, 3.4, 3])
                    .marker(
                        AAMarker()
                            .radius(5)
                            .symbol("circle")
                            .fillColor("#1E90FF")
                            .lineWidth(2.0)
                            .lineColor(AAColor.red)
                    )
                ])
    }
    
    private func configurePieMixedLineMixedColumnChart() -> AAChartModel {
        let pieElement = AASeriesElement()
            .type(.pie)
            .name("Total cosume")
            .data([
                AADataElement()
                    .name("Ada")
                    .y(13.0)
                    .color(AAGradientColor.oceanBlue)
                    .toDic()!,
                AADataElement()
                    .name("Bob")
                    .y(13.0)
                    .color(AAGradientColor.sanguine)
                    .toDic()!,
                AADataElement()
                    .name("Coco")
                    .y(13.0)
                    .color(AAGradientColor.purpleLake)
                    .toDic()!
                ])
        
        let pieElementDic:NSMutableDictionary = NSMutableDictionary.init(dictionary: pieElement.toDic()!)
        pieElementDic.setValue([100, 80], forKey: "center")
        pieElementDic.setValue(100, forKey: "size")
        pieElementDic.setValue(false, forKey: "showInLegend")
        pieElementDic.setValue(["enabled": false], forKey: "dataLabels")
        
        let aaPieElementDic = AAPie()
            .center([100,80])
            .size(100)
            .showInLegend(false)
            .dataLabels(
                AADataLabels()
                    .enabled(false))
            .toDic()!

        
        return AAChartModel()
            .stacking(.normal)
            .colorsTheme([AAGradientColor.oceanBlue,
                          AAGradientColor.sanguine,
                          AAGradientColor.purpleLake])
            .dataLabelsEnabled(false)
            .series([
                AASeriesElement()
                    .name("Anna")
                    .type(.column)
                    .data([3, 2, 1, 3, 4])
                    ,
                AASeriesElement()
                    .name("Babara")
                    .type(.column)
                    .data([2, 3, 5, 7, 6])
                    ,
                AASeriesElement()
                    .name("Cortana")
                    .type(.column)
                    .data([4, 3, 3, 9, 0])
                    ,
                AASeriesElement()
                    .name("average value")
                    .type(.line)
                    .data([3, 2.67, 3, 6.33, 3.33])
                    .marker(
                        AAMarker()
                            .fillColor("#1E90FF")
                            .lineWidth(2.0)
                            .lineColor(AAColor.white)
                    )
                    ,
                
//                pieElementDic as! Dictionary<String, Any>
                ])
    }
    
    private func configureLineChartWithShadow() -> AAChartModel {
        return AAChartModel()
            .chartType(.line)
            .title("Line Chart With Shadow")
            .categories(["Jan", "Feb", "Mar", "Apr", "May", "Jun","Jul", "Aug", "Sep", "Oct", "Nov", "Dec"])
            .legendEnabled(false)
            .dataLabelsEnabled(false)
            .markerSymbolStyle(.borderBlank)
            .series([
                AASeriesElement()
                    .data([7.0, 6.9, 9.5, 9.6, 13.9, 14.5, 18.3, 18.2, 21.5, 25.2, 26.5, 23.3])
                    .lineWidth(4)
                    .shadow(
                        AAShadow()
                            .offsetX(15.0)
                            .offsetY(15.0)
                            .opacity(0.1)
                            .width(9.0)
                            .color(AAColor.red)
                    )
                ])
    }

}
