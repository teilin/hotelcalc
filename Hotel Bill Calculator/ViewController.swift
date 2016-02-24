//
//  ViewController.swift
//  Hotel Bill Calculator
//
//  Created by Teis Lindemark on 24.02.2016.
//  Copyright © 2016 Teis Lindemark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let hotelCalc = HotelCalculatorModel(days: 2, rate: 2)

    @IBOutlet var daysUITextField: UITextField?
    @IBOutlet var rateUITextField: UITextField?
    @IBOutlet var totalUILabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func calculateTapped(sender: AnyObject){
        let days: Int? = Int((daysUITextField?.text)!)
        let rate: Int? = Int((rateUITextField?.text)!)
        if days != nil {
            hotelCalc.numDays = days!
        }
        if rate != nil {
            hotelCalc.rate = rate!
        }
        refreshUI()
    }
    
    func refreshUI() {
        daysUITextField?.text = String(hotelCalc.numDays)
        rateUITextField?.text = String(hotelCalc.rate)
        totalUILabel?.text = String(hotelCalc.total)
    }
}

