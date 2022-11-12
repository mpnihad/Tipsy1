//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    
    var calculateBrain  = CalculateBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        previousSelected = tenPctButton
        // Do any additional setup after loading the view.
    }
    
  
   
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var TwentyPctButton: UIButton!
    
    var previousSelected : UIButton? = nil
 
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        print(calculateBrain.tipPercentage)
        print(calculateBrain.slipNumber)
        calculateBrain.billAmount = Double(billTextField.text ?? "0)") ?? 0.0
        
        print(calculateBrain.calculateTotalAmount())
        print(calculateBrain.getIndivitualAmt())
        
        self.performSegue(withIdentifier: "goToResult", sender: self )
    }
    @IBAction func zeroPctButtonPressed(_ sender: UIButton) {
        calculateBrain.tipPercentage = 0.0
        tipCalculate(sender)
        sender.isSelected = true
       
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        calculateBrain.slipNumber = Int(sender.value)
        splitNumberLabel.text = "\(calculateBrain.slipNumber)"
        
    }
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBAction func twenryPctButtonPressed(_ sender: UIButton) {
        calculateBrain.tipPercentage = 0.2
        tipCalculate(sender)
        sender.isSelected = true
     
    }
    @IBAction func tenPctButtonPressed(_ sender: UIButton) {
        calculateBrain.tipPercentage = 0.1
        tipCalculate(sender)
        sender.isSelected = true
       
    }
    
    func tipCalculate(_ sender: UIButton){
        billTextField.endEditing(true)
        previousSelected?.isSelected = false
        previousSelected = sender
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.splitAmt = calculateBrain.slipAmount
            
            destinationVC.descriptions = "Split between \(calculateBrain.slipNumber) peoples with \(calculateBrain.tipPercentage*100)% tip" 
        }
        
    }
    
}

