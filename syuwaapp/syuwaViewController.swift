//
//  syuwaViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/01/24.
//

import UIKit

class syuwaViewController: UIViewController {
    
    @IBAction func backbutton(){
        self.navigationController?.popViewController(animated: true)
    }
    


    override func viewDidLoad() {
            super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        //隠す
            


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
