//
//  ViewController.swift
//  Dommety_Calculator
//
//  Created by Dommety,Naga Sateesh on 2/17/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelOutlet: UILabel!
   
    
    var num1 = 0.0
    var num2 = 0.0
    var res = 0.0
    var optr = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func fixDecimal(_ temp: Double) -> String {
          let a = String(format: "%g", temp)
          return a
      }
    
    @IBAction func buttonAC(_ sender: Any) {
        
        labelOutlet.text = ""
        num1 = 0.0
        num2 = 0.0
        res = 0.0
        optr = ""
    }
    
    
    @IBAction func buttonC(_ sender: Any) {
        labelOutlet.text = ""
    }
    
    @IBAction func buttonChangeSign(_ sender: Any) {
        var displayText = labelOutlet.text!
                
                
                if(displayText.first != "-"){
                    labelOutlet.text! = "-"+labelOutlet.text!
                }else{
                    displayText.remove(at: displayText.firstIndex(of: "-")!)
                    labelOutlet.text!=displayText
                }
    }
    
    
    @IBAction func buttonDivision(_ sender: Any) {
        optr = "/"
        num1 = Double(labelOutlet.text!)!
        labelOutlet.text = ""
               
    }
    
    
    @IBAction func button7(_ sender: Any) {
        labelOutlet.text = labelOutlet.text! + "7"
    }
    
    
    @IBAction func button8(_ sender: Any) {
        labelOutlet.text = labelOutlet.text! + "8"
    }
    
    
    @IBAction func button9(_ sender: Any) {
        labelOutlet.text = labelOutlet.text! + "9"
    }
    
    @IBAction func buttonMultiply(_ sender: Any) {
        optr = "*"
        num1 = Double(labelOutlet.text!)!
        labelOutlet.text = ""
        
    }
    
    @IBAction func button4(_ sender: Any) {
        labelOutlet.text = labelOutlet.text! + "4"
    }
    
    @IBAction func button5(_ sender: Any) {
        labelOutlet.text = labelOutlet.text! + "5"
    }
    
    @IBAction func button6(_ sender: Any) {
        labelOutlet.text = labelOutlet.text! + "6"
    }
    
    @IBAction func buttonMinus(_ sender: Any) {
        optr = "-"
        num1 = Double(labelOutlet.text!)!
        labelOutlet.text = ""
    }
    
    @IBAction func button1(_ sender: Any) {
        labelOutlet.text = labelOutlet.text! + "1"
    }
    
    @IBAction func button2(_ sender: Any) {
        labelOutlet.text = labelOutlet.text! + "2"
    }
    
    @IBAction func button3(_ sender: Any) {
        labelOutlet.text = labelOutlet.text! + "3"
    }
    
    @IBAction func buttonPlus(_ sender: Any) {
        optr = "+"
        num1 = Double(labelOutlet.text!)!
        labelOutlet.text = ""
    }
    
    @IBAction func button0(_ sender: Any) {
        labelOutlet.text = labelOutlet.text! + "0"
    }
    
    @IBAction func buttonDot(_ sender: Any) {
        labelOutlet.text = labelOutlet.text! + "."
    }
    
    @IBAction func buttonPercentage(_ sender: Any) {
        optr = "%"
        num1 = Double(labelOutlet.text!)!
        labelOutlet.text = ""
    }
    
    @IBAction func buttonEquals(_ sender: Any) {
        num2 = Double(labelOutlet.text!)!
              
              if (optr == "+") {
                  res = num1+num2
                  labelOutlet.text! = String(fixDecimal(res))
                  
              }
              else if (optr == "/") {
                  if(num2 == 0)
                  {
                      labelOutlet.text = "Error"
                  }
                  else{
                  res = num1/num2
                  res = round(res*100000)/100000.0
                  labelOutlet.text = String(res)
                  }
                      
                  
              }
              else if (optr == "-") {
                  res = num1-num2
                  labelOutlet.text = String(fixDecimal(res))
              }
              else if (optr == "X") {
                  res = num1*num2
                  labelOutlet.text = String(res)
              }
              else if (optr == "%") {
                  res = num1.truncatingRemainder(dividingBy: num2)
                  res = round(res*100000)/100000.0
                  labelOutlet.text = String(res)
              }
               
              
              }
    }

