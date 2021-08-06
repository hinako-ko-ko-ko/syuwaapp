//
//  numberDetailViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/03/24.
//

import UIKit

class numberDetailViewController: UIViewController {
    let numberArray: [String] = ["1","2","3","4","5","6","7","8","9","0",]
    let images : [String] = ["iti.png","nii.png","san.png","yonn.png","go.png","roku.png","nana.png","hati.png","kyu.png","zero.png",]
    let details :[String] =
        ["人差し指を立てる","","２の手に薬指を加える","３の手に小指を加える","親指を横に伸ばし、他の四本の指を握る","手の甲を相手に向けて、親指と人差し指でL字を作る","６の手に中指を加える","７の手に薬指を加える","８の手に小指を加える","小指が相手に見えるようにして丸めた手が「０」に見えるようにする",]
    
    var index = 0
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var Label: UILabel!
    @IBOutlet var numberLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changenumber(sender :UIButton){
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

