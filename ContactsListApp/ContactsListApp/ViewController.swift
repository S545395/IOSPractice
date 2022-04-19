//
//  ViewController.swift
//  ContactsListApp
//
//  Created by Dommety,Naga Sateesh on 4/19/22.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var contactNames:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        fetchData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        cell.textLabel?.text = contactNames[indexPath.row]
        
        return cell
    }
    
    func fetchData(){
        //create a reference
        let databaseRef = Database.database().reference()
        databaseRef.observeSingleEvent(of: .value){
            snaphot in
            let contacts = snaphot.value as! NSDictionary
            self.contactNames = contacts.allKeys as! [String]
            
            //relaod the data
            self.tableViewOutlet.reloadData()
        }
    }

}

