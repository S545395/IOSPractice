//
//  ContactsViewController.swift
//  ContactsListApp
//
//  Created by Dommety,Naga Sateesh on 4/21/22.
//

import UIKit

class ContactsViewController: UIViewController {

    var contacts:String = ""
    var email = ""
    var phoneNum:Int = 0
    
    @IBOutlet weak var emailOutlet: UILabel!
    
    @IBOutlet weak var phoneOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emailOutlet.text! = email
        phoneOutlet.text! = "\(phoneNum)"
    }

}
