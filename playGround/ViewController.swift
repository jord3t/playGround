//
//  ViewController.swift
//  playGround
//
//  Created by trevor jordet on 2/12/16.
//  Copyright © 2016 jord3t. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad() {
        updateUI()
    }
    
    private func averageOf(numbers: Double...) -> String
    {
        var sum = 0.0
        var total = 0.0
        for number in numbers
        {
            sum += number
            total++
        }
        let average: Double = Double(sum/total).roundToPlaces(2)
        return "\(average) of \(total) : sum: \(sum)"
    }
    
    private func updateUI()
    {
        print(averageOf(1, 5, 8))
        print(averageOf(42, 597, 12, 22.1))
    }
    

}

extension Double {
    /// Rounds the double to decimal places value
    func roundToPlaces(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return round(self * divisor) / divisor
    }
}