//
//  gojyuuonndetaillViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/05/30.
//

import UIKit

class gojyuuonndetaillViewController: UIViewController {
    let characterArray: [String] = ["あ","い","う","え","お","か","き","く","け","こ","さ","し","す","せ","そ","た","ち","つ","て","と","な","に","ぬ","ね","の","は","ひ","ふ","へ","ほ","ま","み","む","め","も","や","ゆ","よ","ら","り","る","れ","ろ","わ","を","ん"]
    let images : [String] = ["2a.png","2i.png","2u.png","2e.png","2o.png","2ka.png","2ki.png","2ku.png","2ke.png","2ko.png","2sa.png","2si.png","2su.png","2se.png","2so.png","2ta.png","2ti.png","2tu.png","2te.png","2to.png","2na.png","2ni.png","2nu.png","2ne.png","2no.png","2ha.png","2hi.png","2hu.png","2he.png","2ho.png","2ma.png","2mi.png","2mu.png","2me.png","2mo.png","2ya.png","2yu.png","2yo.png","2ra.png","2ri.png","2ru.png","2re.png","2ro.png","2wa.png","2wo.png","2nn.png",]
    let details :[String] =
        ["親指を横に出したグーの形をする","小指を立てる","人差し指と中指を立てる","指の腹を第一関節に\nつけるようにする","手を筒のように丸める","人差し指を立てて\n中指の第二関節に親指をつける","影絵の時の狐の形をする","揃えた四本指を第一関節で\n少し内側に曲げる","敬礼のように指を立て\n親指を曲げる","カタカナの「コ」の\n上の部分のように直角に曲げて\n小指を相手に見せる","グーの形をして\n親指は外に出す","親指を立てて\n人差し指と中指を横にする","自分から見てカタカナの「ス」に\n見えるようにする","中指を立てて他の指は握る","目の前の物を「それ」と\n刺す仕草をする","親指を立てて握り拳を作り\n親指の腹を相手に見せる","小指を立てて他の指先を合わせる","小指と薬指を立てて親指の先に\n人差し指と中指の先をつける","指を揃えて掌を相手に向ける","人差し指と中指を立てる","人差し指と中指を下に向ける","人差し指と中指を横にする","人差し指を鍵型に曲げる","木の根のように下向きにして開く","人差し指でカタカナの\n「ノ」を空書する","人差し指と中指を\n前方斜め下に出す","人差し指を立てて\n指の腹を相手に向ける","自分から見て親指と人差し指で\nカタカナの「フ」を作る","手を下向けにして\n親指と小指を出して\n「へ」の形を作る他の指を曲げる","手の甲を相手に向けて\n指全部を少し内側に曲げる","人差し指と中指と薬指を開いて\n伸ばして下に向ける","人差し指と中指と薬指を\n横にする","親指と人差し指でL字を作る","親指と人差し指を付けて\n他の指を立てて目の形を作る","親指と人差し指を合わせる","小指と親指を立てて\n他の指を握る","手の甲を相手に向けて\n人差し指と中指と薬指を立てる","手の甲を相手に向けて\n親指以外の指の間を\n少し開き横に出す","人差し指と中指を絡ませる","人差し指と中指の二本指で\n「リ」を書くようにする","小指と薬指を折って\n他の指を立てて\n相手から「ル」に\n見えるようにする","親指と人差し指を立てて\n相手から「レ」に\n見えるようにする","人差し指と中指を合わせて\n鍵の形にする","掌を相手に見せて\n人差し指と中指と薬指を立てる","「お」と同じくして手前に引く","人差し指で\nカタカナの「ン」を空書する",]
    
    var index = 0
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var Label: UILabel!
    @IBOutlet var characterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        changeUI()
    }
    @IBAction func changecharacter(sender :UIButton){
        index = sender.tag
        changeUI()
    }
    
    func changeUI() {
        print(index)
        imageView.image = UIImage(named: images[index])
        imageView2.image = UIImage(named: images[index])
        Label.text = details[index]
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
