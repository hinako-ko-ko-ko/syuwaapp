//
//  ResulttwoViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/08/29.
//

import UIKit

class ResulttwoViewController: UIViewController {

    //正解数
    var correctAnswer: Int = 0
    
    //結果を表示するラベルの宣言
    @IBOutlet var resultLavel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultLavel.text = String(correctAnswer)
        navigationController?.setNavigationBarHidden(true, animated: false)
        //隠す
    }
    @IBAction func back(){
        self.presentingViewController?.presentingViewController?.presentingViewController
        dismiss(animated: true, completion: nil)
        
    }
    @IBAction func gotokirokubutton(){
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func backbutton(){
        self.navigationController?.popViewController(animated: true)
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
