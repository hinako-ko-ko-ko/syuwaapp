//
//  numberListViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/03/24.
//

import UIKit

class numberListViewController: UIViewController {
    @IBOutlet var suujiButton: UIButton!
    @IBOutlet var jyuuButton: UIButton!
    @IBOutlet var hyakuButton: UIButton!
    
    
    let cornerRadius: CGFloat = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
        suujiButton.layer.cornerRadius = cornerRadius
        jyuuButton.layer.cornerRadius = cornerRadius
        hyakuButton.layer.cornerRadius = cornerRadius
        

        // Do any additional setup after loading the view.
        
       
        
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
