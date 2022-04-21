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
    
    var contacts = NSDictionary()
    
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
       
        /*
        //create a reference
        let databaseRef = Database.database().reference()
        databaseRef.observeSingleEvent(of: .value){
            snaphot in
            let contacts = snaphot.value as! NSDictionary
            self.contactNames = contacts.allKeys as! [String]
            
            //relaod the data
            self.tableViewOutlet.reloadData()
          */
            
            //Create the reference
            let databaseRef = Database.database().reference()
            
            //Get the data using the method observeSingleEvent
            databaseRef.observeSingleEvent(of: .value) { snapshot in
                self.contacts = snapshot.value as! NSDictionary
                self.contactNames = self.contacts.allKeys as! [String]
                self.tableViewOutlet.reloadData();
                
                print(self.contacts)
                
            }
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transistion = segue.identifier
        if transistion == "contactDetailsSegue"{
            let destination = segue.destination as! ContactsViewController
            let contactClicked = contactNames[(tableViewOutlet.indexPathForSelectedRow?.row)!]
            for (key, value) in self.contacts{
                if key as! String == contactClicked{
                    for (key1, value1) in value as! [String:Any]{
                        if key1 == "email"{
                            destination.email = value1 as! String
                        }
                        else if key1 == "PhoneNum"{
                            destination.phoneNum = value1 as! Int
                        }
                    }
                }
                print(key)//String
                print(value)//Dictionary
            }
            
           
            
            
        }
    }

}

