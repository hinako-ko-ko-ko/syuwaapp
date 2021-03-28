//
//  manynumberDetailViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/03/28.
//

import UIKit

class manynumberDetailViewController: UIViewController {
    let numberArray: [String] = ["100","1000","10000",]
    let images : [String] = ["iti.png","nii.png","san.png","yonn.png","go.png","roku.png","nana.png","hati.png","kyu.png","zero.png",]
    let details :[String] =
    ["漢数字の「一」を表し、人差し指を上に跳ね上げる","小指を立てて他の指先を親指に合わせ右に動かす相手に指先を見せる","「１」を」表してから全部の指を閉じて「万」の位を表す",]
    
    var index = 0
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var Label: UILabel!
    @IBOutlet var numberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func changemanynumber(sender :UIButton){
    index = sender.tag
    changeUI()
}

    func changeUI() {
    imageView.image = UIImage(named: images[index])
    imageView2.image = UIImage(named: images[index])
    Label.text = details[index]
    numberLabel.text = numberArray[index]
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
