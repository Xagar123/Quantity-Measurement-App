//
//  ViewController.swift
//  Unit Conversion
//
//  Created by Admin on 07/11/22.
//

import UIKit

class ViewController: UIViewController {

    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        temperatureButton.layer.masksToBounds = true
        temperatureButton.layer.cornerRadius = 15
        
        volumeButton.layer.masksToBounds = true
        volumeButton.layer.cornerRadius = 15
        
        unitConversionButton.layer.masksToBounds = true
        unitConversionButton.layer.cornerRadius = 15
        
        currencyButton.layer.masksToBounds = true
        currencyButton.layer.cornerRadius = 15
        
    }
    
    @IBOutlet weak var temperatureButton: UIButton!
    
    @IBOutlet weak var volumeButton: UIButton!
    
    @IBOutlet weak var unitConversionButton: UIButton!
    
    @IBOutlet weak var currencyButton: UIButton!
    
}

