//
//  numberListViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/03/24.
//

import UIKit

class numberListViewController: UIViewController {
    @IBOutlet var itiButton: UIButton!
    @IBOutlet var niiButton: UIButton!
    @IBOutlet var sanButton: UIButton!
    @IBOutlet var yonnButton: UIButton!
    @IBOutlet var goButton: UIButton!
    @IBOutlet var rokuButton: UIButton!
    @IBOutlet var nanaButton: UIButton!
    @IBOutlet var hatiButton: UIButton!
    @IBOutlet var kyuButton: UIButton!
    @IBOutlet var zeroButton: UIButton!
    
    let cornerRadius: CGFloat = 30.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
        
        itiButton.layer.cornerRadius = cornerRadius
        niiButton.layer.cornerRadius = cornerRadius
        sanButton.layer.cornerRadius = cornerRadius
        yonnButton.layer.cornerRadius = cornerRadius
        goButton.layer.cornerRadius = cornerRadius
        rokuButton.layer.cornerRadius = cornerRadius
        nanaButton.layer.cornerRadius = cornerRadius
        hatiButton.layer.cornerRadius = cornerRadius
        kyuButton.layer.cornerRadius = cornerRadius
        zeroButton.layer.cornerRadius = cornerRadius
        
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
