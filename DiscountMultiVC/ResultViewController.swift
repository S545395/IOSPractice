//
//  ResultViewController.swift
//  DiscountMultiVC
//
//  Created by Dommety,Naga Sateesh on 3/22/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var enteredAmountOutlet: UILabel!
    @IBOutlet weak var enteredDiscountOutlet: UILabel!
    @IBOutlet weak var priceAfterDiscountOutlet: UILabel!
    
    var amount = ""
    var discrate = ""
    var priceAfterDiscount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        enteredAmountOutlet.text = enteredAmountOutlet.text! + amount
        enteredDiscountOutlet.text = enteredDiscountOutlet.text! + discrate
        priceAfterDiscountOutlet.text = priceAfterDiscountOutlet.text! + priceAfterDiscount
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
