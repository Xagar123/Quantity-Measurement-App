//
//  VolumeViewController.swift
//  Unit Conversion
//
//  Created by Admin on 08/11/22.
//

import UIKit

class VolumeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var height: UITextField!
    
    
    @IBOutlet weak var radius: UITextField!
    
    
    @IBOutlet weak var slantHeight: UITextField!
    
    
    @IBAction func calculateAreaOfCone(_ sender: UIButton) {
        var h = Double(height.text!)
        var r = Double(radius.text!)
        var l = Double(slantHeight.text!)
        
        let area = Double(3.14 * Double(r!) * Double(l!))
        
        let simpleAlert = UIAlertController(title: "Answer", message: "Area of conr \(area) m", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Clear", style: .default, handler: nil)
        
        // binding both together
        simpleAlert.addAction(okAction)
        self.present(simpleAlert, animated: true, completion: nil)
    }
    
    
    @IBAction func calculateVolumeOfCone(_ sender: UIButton) {
        guard let height = Double(height.text!) , let radius = Double(radius.text!) else { return}

        let volume = Double((1/3) * 3.14 * (Double(radius) * 2) * Double(height))
        
        let simpleAlert = UIAlertController(title: "Answer", message: "Volume of cone \(volume) m", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Clear", style: .default, handler: nil)
        
        // binding both together
        simpleAlert.addAction(okAction)
        self.present(simpleAlert, animated: true, completion: nil)
    }
}
