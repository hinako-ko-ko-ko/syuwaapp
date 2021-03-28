//
//  kanjinumberDetailViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/03/27.
//

import UIKit

class kanjinumberDetailViewController: UIViewController {
    let numberArray: [String] = ["10","20","30","40","50","60","70","80","90",]
    let images : [String] = ["iti.png","nii.png","san.png","yonn.png","go.png","roku.png","nana.png","hati.png","kyu.png","zero.png",]
    let details :[String] =
    ["人差し指を前に折り曲げる","10の手に中指を曲げて加える","20の手に薬指を曲げて加える","30の手に小指を曲げて加える","親指を曲げてほかの指は握る","50の手に人差し指を曲げて加える","60の手に中指を加える","70の手に薬指を加える","80の手に小指を加える",]
    
    var index = 0
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var Label: UILabel!
    @IBOutlet var numberLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changekanjinumber(sender :UIButton){
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
