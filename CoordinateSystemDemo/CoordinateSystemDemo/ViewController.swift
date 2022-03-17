//
//  ViewController.swift
//  CoordinateSystemDemo
//
//  Created by Dommety,Naga Sateesh on 3/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let minX = ImageViewOutlet.frame.minX
        let minY = ImageViewOutlet.frame.minY
        
        print("(\(minX),\(minY))")
        
        let maxX = ImageViewOutlet.frame.maxX
        let maxY = ImageViewOutlet.frame.maxY
        
        print("(\(maxX),\(maxY))")
        
        let midX = ImageViewOutlet.frame.midX
        let midY = ImageViewOutlet.frame.midY
        
        print("(\(midX),\(midY))")

        //change the location of the image to upper left corner
        ImageViewOutlet.frame.origin.x = 0
        ImageViewOutlet.frame.origin.y = 0
        
        //change the location of the image to upper right corner
        ImageViewOutlet.frame.origin.x = 314
        ImageViewOutlet.frame.origin.y = 0
        
        //change the location of the image to bottom left corner
        ImageViewOutlet.frame.origin.x = 0
        ImageViewOutlet.frame.origin.y = 796
        
        //change the location of the image to bottom right corner
        ImageViewOutlet.frame.origin.x = 314
        ImageViewOutlet.frame.origin.y = 796
        
        //Change the location of the image to center
        ImageViewOutlet.frame.origin.x = 157
        ImageViewOutlet.frame.origin.y = 398
        
    }


}

