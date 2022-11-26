//
//  CurrencyController.swift
//  Unit Conversion
//
//  Created by Admin on 08/11/22.
//

import UIKit

class CurrencyController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var fromSegment: UISegmentedControl!
    
    @IBOutlet weak var toSegment: UISegmentedControl!

    @IBOutlet weak var textField: UITextField!
    
    var toSegmentIndexOne = String()
    var toSegmentIndexTwo = String()
    
    
    @IBAction func fromSegment(_ sender: UISegmentedControl) {
        
        let userSelect = fromSegment.selectedSegmentIndex
        
        switch userSelect {
            
        case 0 :
            self.toSegmentIndexOne = "USD"
            self.toSegmentIndexTwo = "INR"
         
        case 1 :
            self.toSegmentIndexOne = "INR"
            self.toSegmentIndexTwo = "USD"
            
        default: break
            
        }
        toSegment.setTitle(toSegmentIndexOne, forSegmentAt: 0)
        
        toSegment.setTitle(toSegmentIndexTwo, forSegmentAt: 1)
    }
    
    
    @IBAction func calculateButton(_ sender: Any) {
        let answer = performCalculation(from: fromSegment.titleForSegment(at: fromSegment.selectedSegmentIndex)!, to: toSegment.titleForSegment(at: toSegment.selectedSegmentIndex)!, textField: Double(textField.text!)!)
        
        let simpleAlert = UIAlertController(title: "Answer", message: " \(answer)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Clear", style: .default, handler: nil)
        
        // binding both together
        simpleAlert.addAction(okAction)
        self.present(simpleAlert, animated: true, completion: nil)
    }
    }

    
    func performCalculation( from: String, to: String, textField: Double) -> String {
        
        if from == to {
            return "Aahhh Wrong Input"
        }
        else if from == "USD" && to == "INR" {
            let answer = "\(round(textField * 82 * 100)/100) \(to)"
            return answer
        }
        else if from == "INR" && to == "USD" {
            let answer = "\(round(textField * 0.012 * 100)/100) \(to)"
            return answer
        }
        
        else {
             return "ERROR"
        }
    }

