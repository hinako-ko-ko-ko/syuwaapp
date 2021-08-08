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
     
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
            
             
            learnbutton.backgroundColor = UIColor(hex: "E0FFFF")// ボタン背景色設定
            learnbutton.backgroundColor = UIColor(hex: "E0FFFF")                                              // 背景色
            learnbutton.layer.borderWidth = 0                                             // 枠線の幅
            learnbutton.layer.borderColor = UIColor.blue.cgColor                            // 枠線の色
            learnbutton.layer.cornerRadius = 0
            // 角丸のサイズ
            learnbutton.setTitleColor(UIColor.black, for: UIControl.State.normal)
            // タイトルの色
        
        }
        
           override func didReceiveMemoryWarning() {
               super.didReceiveMemoryWarning()
               // Dispose of any resources that can be recreated.
           }



}

