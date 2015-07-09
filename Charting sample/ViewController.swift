//
//  ViewController.swift
//  Charting sample
//
//  Created by Adam Saye on 09/07/2015.
//  Copyright (c) 2015 xxx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var chartHolder: LineChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        drawChart()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func drawChart() {
        
        // General options
        chartHolder.noDataText = "No Records To Chart"
        chartHolder.descriptionText =  "Description"
        chartHolder.xAxis.labelPosition = .Bottom
        
        chartHolder.rightAxis.drawGridLinesEnabled = false
        chartHolder.leftAxis.drawGridLinesEnabled = false

        
        
        
        // All possible xValues
        var xAxisValues: [String] = ["1", "2", "2", "4"]
        
        var y1DataEntries: [ChartDataEntry] = []
        let y1DataEntry1 = ChartDataEntry(value: 5, xIndex: 0)
        y1DataEntries.append(y1DataEntry1)
        let y1DataEntry2 = ChartDataEntry(value: 4, xIndex: 1)
        y1DataEntries.append(y1DataEntry2)
        let y1DataEntry3 = ChartDataEntry(value: 7, xIndex: 2)
        y1DataEntries.append(y1DataEntry3)
        let y1DataEntry4 = ChartDataEntry(value: 6, xIndex: 3)
        y1DataEntries.append(y1DataEntry4)
        
        let lineChartDataSetY1 = LineChartDataSet(yVals: y1DataEntries, label: "Y1")
        lineChartDataSetY1.axisDependency = .Left
        lineChartDataSetY1.colors = [UIColor.redColor()]
        
        
        // Y2
        var y2DataEntries: [ChartDataEntry] = []
        let y2DataEntry1 = ChartDataEntry(value: 9, xIndex: 0)
        y2DataEntries.append(y2DataEntry1)
        let y2DataEntry2 = ChartDataEntry(value: 5, xIndex: 1)
        y2DataEntries.append(y2DataEntry2)
        let y2DataEntry3 = ChartDataEntry(value: 8, xIndex: 2)
        y2DataEntries.append(y2DataEntry3)
        let y2DataEntry4 = ChartDataEntry(value: 6, xIndex: 3)
        y2DataEntries.append(y2DataEntry4)
        
        let lineChartDataSetY2 = LineChartDataSet(yVals: y2DataEntries, label: "Y2")
        lineChartDataSetY2.axisDependency = .Right
        lineChartDataSetY2.colors = [UIColor.greenColor()]
        let lineChartData = LineChartData(xVals: xAxisValues, dataSets: [lineChartDataSetY1, lineChartDataSetY2])
        
        
        chartHolder.data = lineChartData
        
        chartHolder.leftAxis.customAxisMin = 3
        chartHolder.rightAxis.customAxisMin = 4
        
        chartHolder.notifyDataSetChanged()

    }
    



}

