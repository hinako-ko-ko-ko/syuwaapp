//
//  gojyuuonndetaillViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/05/30.
//

import UIKit

class todoDetailViewController: UIViewController {
    let characterArray: [String] =
        ["おはよう","こんにちは","こんばんは","ありがとう","どういたしまして","ごめんなさい","はじめまして",
         "さようなら","お久しぶりです","よろしくお願いします","おめでとう"]
    

    let images : [String] = ["ohayougozaimasu.png","konnnitiha.png","konnbannha.png","arigatougozaimasu.png","douitasimasite.png","gomennnasai.png","hajimemasite.png","sayounara.png","ohisasiburidesu.png","yorosikuonegaisimasu.png","omedetougozaimasu.png"]
    
    let images2: [String] = ["ohayougozaimasu2.png","konnnitiha2.png","konnbannha2.png","arigatougozaimasu2.png","douitasimasite2.png","gomennnasai2.png","hajimemasite2.png","sayounara2.png","ohisasiburidesu2.png","yorosikuonegaisimasu2.png","omedetougozaimasu2.png"]
    let images3: [String] = ["ohayougozaimasu3.png","ohayougozaimasu3.png","ohayougozaimasu3.png","arigatougozaimasu3.png","douitasimasite3.png","gomennnasai3.png", "hajimemasite3.png","sayounara3.png","ohisasiburidesu3.png","yorosikuonegaisimasu3.png","omedetougozaimasu3.png"]
    let images4: [String] = ["ohayougozaimasu4.png","ohayougozaimasu4.png","ohayougozaimasu4.png","arigatougozaimasu4.png","douitasimasite4.png","gomenn4.png","hajimemasite4.png","sayounara4.png","ohisasiburidesu4.png","yorosikuonegaisimasu4.png","omedetougozaimasu4.png",]
    let details :[String] =
        ["こめかみに当てた右手の拳を下ろす"
         ,"右手の人差し指と中指を立てて\n額に当てる"
         ,"両手の手のひらを顔の前で交差させる"
         ,"左手の甲に右手を直角に乗せる"
         ,"小指を立てて顎に当てる"
         ,"右手の親指と人差し指で眉間をつまむ"
         ,"左手の甲に右手を乗せてから\n右手の人差し指だけを伸ばしてあげる"
         ,"右手の手のひらを前に向ける"
         ,"両手の甲を胸の前で合わせる"
         ,"手を握って耳に当てて横にスライドさせる"
         ,"両手の指を付け合わせる"]
    let details2 :[String] =
        ["左右の人差し指を向かい合わせて\n同時に曲げお辞儀させる"
         ,"左右の人差し指を向かい合わせて\n同時に曲げお辞儀させる"
         ,"左右の人差し指を向かい合わせて\n同時に曲げお辞儀させる"
         ,"右手を真上に上げる"
         ,"顎で２回トントンする"
         ,"伸ばした手で拝む仕草をする"
         ,"両手の人差し指を立てて\n左右から近づけて合わせる"
         ,"手のひらを横に振る"
         ,"両手の甲を離す"
         ,"伸ばした手で拝む仕草をする"
         ,"両手を上へ上げながら\n指を開く"]
    
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
