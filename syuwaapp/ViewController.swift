//
//  ViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/01/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var learnbutton: UIButton!
    @IBOutlet weak var quizebutton: UIButton!
    @IBOutlet weak var camerabutton: UIButton!
    
     
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            navigationController?.setNavigationBarHidden(true, animated: false)
            //隠す
           
            
            
        
        }
        
           override func didReceiveMemoryWarning() {
               super.didReceiveMemoryWarning()
               // Dispose of any resources that can be recreated.
           }
    



}

