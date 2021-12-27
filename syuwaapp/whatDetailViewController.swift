//
//  gojyuuonndetaillViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/05/30.
//

import UIKit

class whatDetailViewController: UIViewController {
    let characterArray: [String] = ["いつ","どこ","だれ","なに","なぜ","どうですか"]
    let images : [String] = ["itu1.png","doko1.png","dare1.png","nani1.png","naze1.png","doudesuka1.png"]
    
    let images2: [String] = ["itu2.png","doko2.png","dare2.png","nani2.png","naze2.png","doudesuka2.png"]
    let images3: [String] = ["itu3.png","nani1.png","dare3.png","nani3.png","naze3.png","doudesuka3.png"]
    let images4: [String] = ["itu4.png","nani2.png","dare4.png","nani4.png","naze4.png","doudesuka4.png"]
    let details :[String] =
        ["両手を手首で\n交差させるように縦に重ねる"
         ,"指先を折り曲げて体の前に置く"
         ,"右手の指を曲げて頬に当てる"
         ,"人差し指を立てて左右に振る"
         ,"左手の手のひらの下に\n人差し指を伸ばした右手を置く"
         ,"手のひらを上に向けて横に動かす"]
    let details2 :[String] =
        ["同時に親指から順に折り曲げる"
         ,"人差し指を立てて左右に振る"
         ,"右手を前に数回出す"
         ,"手のひらを前に出す"
         ,"右手を前に向かって潜らせる"
         ,"手のひらを前に出す"]
    
    var index = 0
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var imageView3: UIImageView!
    @IBOutlet var imageView4: UIImageView!
    @IBOutlet var Label: UILabel!
    @IBOutlet var Label2: UILabel!
    @IBOutlet var characterLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        changeUI()
        navigationController?.setNavigationBarHidden(true, animated: false)
        //隠す
    }
    @IBAction func changecharacter(sender :UIButton){
        index = sender.tag
        changeUI()
    }
    
    func changeUI() {
        imageView.image = UIImage(named: images[index])
        imageView2.image = UIImage(named: images2[index])
        imageView3.image = UIImage(named: images3[index])
        imageView4.image = UIImage(named: images4[index])
        Label.text = details[index]
        Label2.text = details2[index]
        characterLabel.text = characterArray[index]
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
