//
//  SelectViewController.swift
//  Unit Conversion
//
//  Created by Admin on 08/11/22.
//

import UIKit

class SelectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        fromSegment.setTitle(fromSegmentIndexOne, forSegmentAt: 0)
        
        fromSegment.setTitle(fromSegmentIndexTwo, forSegmentAt: 1)
        
        toSegment.setTitle(toSegmentIndexOne, forSegmentAt: 0)
        
        toSegment.setTitle(toSegmentIndexTwo, forSegmentAt: 1)
        
    }
    
    @IBOutlet weak var fromSegment: UISegmentedControl!
    
    @IBOutlet weak var toSegment: UISegmentedControl!
    
    
    @IBOutlet weak var answerField: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var fromSegmentIndexOne = String()
    var fromSegmentIndexTwo = String()
    var toSegmentIndexOne = String()
    var toSegmentIndexTwo = String()
    
    
    @IBAction func calculateUnit(_ sender: Any) {
        if textField.text == "" {
            answerField.text = "Atleast enter a value"
        }
        else {
            let answer = performCalculation(from: fromSegment.titleForSegment(at: fromSegment.selectedSegmentIndex)!, to: toSegment.titleForSegment(at: toSegment.selectedSegmentIndex)!, textField: Double(textField.text!)!)
            
            //answerField.text = answer
            
            let simpleAlert = UIAlertController(title: "Answer", message: " \(answer)", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Clear", style: .default, handler: nil)
            
            // binding both together
            simpleAlert.addAction(okAction)
            self.present(simpleAlert, animated: true, completion: nil)
        }
        
        
    }
    func isDouble(ArrayofStrings a:String ...) -> Bool{
        
        var isDouble = true
        
        for i in a {
            let doubleCheck:Double? = Double(i)
            if doubleCheck == nil {
                isDouble = false
            }
        }
        return isDouble
    }
    
    func performCalculation( from: String, to: String, textField: Double) -> String {
        
        if from == to {
            return "Aahhh Wrong Input"
        }
        else if from == "Meter" && to == "Centimeter" {
            let answer = "\(round(textField * 100 * 100)/100) \(to)"
            return answer
        }
        else if from == "Centimeter" && to == "Meter" {
            let answer = "\(round(textField * 0.01 * 100) / 100) \(to)"
            return answer
        }
        else if from == "Meter" && to == "Kilometer" {
            let answer = "\(round(textField * 0.001)) \(to)"
            return answer
        }
        else if from == "Kilometer" && to == "Meter" {
            let answer = "\(round(textField * 1000)) \(to)"
            return answer
        }
        else if from == "Centimeter" && to == "Inch" {
            let answer = "\(round(textField * 0.39370)) \(to)"
            return answer
        }else if from == "Inch" && to == "Centimeter" {
            let answer = "\(round(textField * 2.54) ) \(to)"
            return answer
        }
        
        else {
             return "ERROR"
        }
        
    
    }
    
    
    
    
    
}
