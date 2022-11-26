//
//  TemperatureViewController.swift
//  Unit Conversion
//
//  Created by Admin on 07/11/22.
//

import UIKit

class TemperatureViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBOutlet weak var userInput: UITextField!
    
   
    @IBAction func convertFtoC(_ sender: UIButton) {
        guard let input = Double(userInput.text!) else {return}  //early exit
        
        let celsius = Double((((Double(input) - 32))*(5/9))*100)/100
        
        //lable1.text = String(sum)
        let simpleAlert = UIAlertController(title: "Answer", message: "Temperature is \(celsius) C", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Clear", style: .default, handler: nil)
        
        // binding both together
        simpleAlert.addAction(okAction)
        self.present(simpleAlert, animated: true, completion: nil)
        
        
    }
    
    @IBAction func convertCtoF(_ sender: UIButton) {
        guard let input = Double(userInput.text!) else { return }
        
        let fahrenheit = Double(((Double(input) * (9/5)) + 32) * 100) / 100
        
        //lable1.text = String(sum)
        let simpleAlert = UIAlertController(title: "Answer", message: "Temperature is \(fahrenheit) F", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Clear", style: .default, handler: nil)
        
        // binding both together
        simpleAlert.addAction(okAction)
        self.present(simpleAlert, animated: true, completion: nil)
        
    }
    
    func hideKeyBoardTapArround(){
            let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
            tap.cancelsTouchesInView = false
            view.addGestureRecognizer(tap)
        }
    
        @objc func dismissKeyboard(){
            view.endEditing(true)
        }
}
