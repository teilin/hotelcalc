//
//  HotelCalculatorModel.swift
//  Hotel Bill Calculator
//
//  Created by Teis Lindemark on 24.02.2016.
//  Copyright © 2016 Teis Lindemark. All rights reserved.
//

import Foundation

public class HotelCalculatorModel {
    var numDays: Int
    var rate: Int
    var total: Int {
        get {
            return numDays * rate
        }
    }
    
    init(days: Int, rate: Int) {
        self.numDays = days
        self.rate = rate
    }
}