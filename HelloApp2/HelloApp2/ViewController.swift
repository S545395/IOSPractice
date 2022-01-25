//
//  ViewController.swift
//  HelloApp2
//
//  Created by Dommety,Naga Sateesh on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayText: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkVowels(_ sender: Any) {
        
        var text = displayText.text!
        text = text.uppercased()
        
        if(text.contains("A") || text.contains("E")
           || text.contains("I") || text.contains("O")
           || text.contains("U")
        ){
            displayLabel.text = "Text has vowels!"
        }else{
            displayLabel.text = "No vowels found!"
        }
    }
    
}

