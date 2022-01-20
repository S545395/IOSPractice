//
//  ViewController.swift
//  HelloApp
//
//  Created by Dommety,Naga Sateesh on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var gradeOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        
        //Read the text from the textfield and store in the variable
        var name = nameOutlet.text!
        
        var grade = gradeOutlet.text!
        
        // Assign the text to display label in the format Hello,name!
        displayLabel.text = "Hello, \(name)! and your grade is \(grade)"
    }
    
    
    
}

