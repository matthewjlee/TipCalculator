//
//  SettingsViewController.swift
//  calculator
//
//  Created by Matthew Lee on 1/5/17.
//  Copyright © 2017 Matthew Lee. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var firstAmount: UITextField!
    @IBOutlet weak var secondAmount: UITextField!
    @IBOutlet weak var thirdAmount: UITextField!
    let defaults = UserDefaults.standard
    var tipPercentage: [Double] = [0.18, 0.2, 0.25]
    
    @IBAction func doneButton(_ sender: Any) {
        
        /**
        defaults.set(Double(firstAmount.text!), forKey: "first")
        defaults.set(Double(secondAmount.text!), forKey: "second")
        defaults.set(Double(thirdAmount.text!), forKey: "third")
        
        //make it save
        defaults.synchronize()
 */
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaults.set(Double(firstAmount.text!), forKey: "first")
        defaults.set(Double(secondAmount.text!), forKey: "second")
        defaults.set(Double(thirdAmount.text!), forKey: "third")
        
        defaults.synchronize()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        //set the destination as ViewController
        if let destinationViewController = segue.destination as? ViewController {
            //access the array
            var array = destinationViewController.tipPercentages
            array[0] = defaults.double(forKey: "first")
            array[1] = defaults.double(forKey: "second")
            array[2] = defaults.double(forKey: "third")
        }
        
    }
 

}
