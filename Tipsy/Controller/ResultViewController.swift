//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Nihad-Mac on 12/11/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var splitAmt = 0.0
    
    var descriptions = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsLabel.text = descriptions
        totalLable.text = ("\(splitAmt)")
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var totalLable: UILabel!
    
    @IBAction func reCalculateLabel(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
