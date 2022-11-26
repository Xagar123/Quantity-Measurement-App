//
//  UnitConversion1.swift
//  Unit Conversion
//
//  Created by Admin on 08/11/22.
//

import UIKit

class UnitConversion1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var typeSegment: UISegmentedControl!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    
        
        let destinationVC = segue.destination as! SelectViewController
        
//        if let indexPath = tableView.indexPathForSelectedRow{
//            destinationVC.selectedCategory = categories?[indexPath.row]
       
                
                let segment = typeSegment.selectedSegmentIndex
                
                switch segment {
                    
                case 0 :
                    
                    destinationVC.fromSegmentIndexOne = "Centimeter"
                    destinationVC.fromSegmentIndexTwo = "Meter"
                    destinationVC.toSegmentIndexOne = "Meter"
                    destinationVC.toSegmentIndexTwo = "Centimeter"
                    
                case 1 :
                    
                    destinationVC.fromSegmentIndexOne = "Meter"
                    destinationVC.fromSegmentIndexTwo = "Kilometer"
                    destinationVC.toSegmentIndexOne = "kilometer"
                    destinationVC.toSegmentIndexTwo = "Meter"
                    
                case 2 :
                    
                    destinationVC.fromSegmentIndexOne = "Inch"
                    destinationVC.fromSegmentIndexTwo = "Centimeter"
                    destinationVC.toSegmentIndexOne = "Centimeter"
                    destinationVC.toSegmentIndexTwo = "Inch"
                    
                default:
                    print ("Error @ preparing segue")
                    
                    
                }
    }
    
    
}
