//
//  ViewController.swift
//  CourseDisplay
//
//  Created by Dommety,Naga Sateesh on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    //declaration of outlets
    @IBOutlet weak var displayImage: UIImageView!
    @IBOutlet weak var courseNumber: UILabel!
    @IBOutlet weak var courseTitle: UILabel!
    @IBOutlet weak var semesterOffered: UILabel!
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
   
    //tuple for displaying course details
    let courses = [["img01","44555","Network Security","Fall 2022"],
                   ["img02","44643","ios","Spring 2022"],
                   ["img03","44646","Data Streaming","Fall 2022"]]
    
    var imageNum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //details for the course(img, course num, crs title,crssem) 0tzposition should be displayed
        
        updateUI(imageNum)
        
        prevButton.isEnabled = false
        
    }

    @IBAction func previousBtnClicked(_ sender: Any) {
        
        //update UI of next course by decrementing image number
        imageNum-=1
        updateUI(imageNum)
        //next btn should be enabled
        nextButton.isEnabled=true
        
        if(imageNum == 0){
            prevButton.isEnabled = false
        }
    }
    
    
    @IBAction func nextBtnClicked(_ sender: Any) {
        
        //update UI of next course by incrementing image number
        imageNum+=1
        updateUI(imageNum)
        //previous btn should be enabled
        prevButton.isEnabled=true
        
        //once user reached end of array, next btn should be disabled
        if(imageNum == courses.count-1){
            nextButton.isEnabled = false
        }
    }
    
    func updateUI(_ imageNum:Int){
        
        displayImage.image = UIImage(named: courses[imageNum][0])
        courseNumber.text = courses[imageNum][1]
        courseTitle.text = courses[imageNum][2]
        semesterOffered.text = courses[imageNum][3]
        
    }
    
}

