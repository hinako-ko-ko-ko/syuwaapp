//
//  numberDetailViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/03/24.
//

import UIKit

class numberDetailViewController: UIViewController {
    let numberArray: [String] = ["1","2","3","4","5","6","7","8","9","0",]
    let images : [String] = ["1.png","2.png","3.png","4.png","5.png","6.png","7.png","8.png","9.png","0.png",]
    let details :[String] =
        ["人差し指を立てる","人差し指と中指を立てる","人差し指と中指と薬指を立てる","親指以外の四本の指を立てる","親指を横に向ける","手を横にして\n親指と人差し指を伸ばす","手を横にして\n親指と人差し指と中指を伸ばす","手を横にして\n小指以外の四本の指を伸ばす","手を横にして\n指を五本とも伸ばす","人差し指と親指で輪を作る",]
    
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

