//
//  ViewController.swift
//  AnimationsApp
//
//  Created by Dommety,Naga Sateesh on 3/17/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var happyBtnOutlet: UIButton!
    @IBOutlet weak var sadBtnOutlet: UIButton!
    @IBOutlet weak var angryBtnOutlet: UIButton!
    @IBOutlet weak var shakeMeBtnOutlet: UIButton!
    @IBOutlet weak var showBtnOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        
        imageOutlet.frame.origin.x = view.frame.width
        happyBtnOutlet.frame.origin.x = view.frame.width
        sadBtnOutlet.frame.origin.x = view.frame.width
        angryBtnOutlet.frame.origin.x = view.frame.width
        shakeMeBtnOutlet.frame.origin.x = view.frame.width
        
    }
    
    @IBAction func happyBtnClicked(_ sender: Any) {
        animateImage(_imageName: "smile")
    }
    
    @IBAction func sadBtnClicked(_ sender: Any) {
        animateImage(_imageName: "sad")
    }
    @IBAction func angryBtnClicked(_ sender: Any) {
        animateImage(_imageName: "angry")
    }
    @IBAction func shakeMeBtnClicked(_ sender: Any) {
        
        //Rectangle r = new Rectangle(x,y,w,h)
        //Get current location of the object
        //Increase the size of the object (image view)
        
        
       // if(imageOutlet.frame.width < 80 && imageOutlet.frame.width < 80){
            var w = imageOutlet.frame.width
            w+=40
            var h = imageOutlet.frame.height
            h+=40
            var x = imageOutlet.frame.origin.x
            x-=20
            var y = imageOutlet.frame.origin.y
            y-=20
        //}
        let largerFrame = CGRect(x: x, y: y, width: w, height: h)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, animations: {
            self.imageOutlet.frame = largerFrame
        })
    }
    @IBAction func showBtnClicked(_ sender: Any) {
        
        UIView.animate(withDuration: 1, animations: {
            
            
            self.imageOutlet.center.x = self.view.center.x
            self.happyBtnOutlet.center.x = self.view.center.x
            self.sadBtnOutlet.center.x = self.view.center.x
            self.angryBtnOutlet.center.x = self.view.center.x
            self.shakeMeBtnOutlet.center.x = self.view.center.x
            self.showBtnOutlet.isEnabled = false
            
        })
        
        
    }
    
    func animateImage(_imageName:String){
        
        //if alpha is 0 the object is opaque
        UIView.animate(withDuration: 1,animations:{
            
            //if the alpha is 1, then object is transparent
            self.imageOutlet.alpha = 0
        
        })
        
        
        UIView.animate(withDuration: 1,delay: 0.2,animations:{
            
            //if the alpha is 1, then object is transparent
            self.imageOutlet.alpha = 1
            self.imageOutlet.image = UIImage(named:_imageName)
        
        })
        
        
    }
}

