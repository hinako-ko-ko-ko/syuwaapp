//
//  characterDetailViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/01/24.
//

import UIKit

class characterDetailViewController: UIViewController {
 
    let characterArray: [String] = ["あ","い","う","え","お","か","き","く","け","こ","さ","し","す","せ","そ","た","ち","つ","て","と","な","に","ぬ","ね","の","は","ひ","ふ","へ","ほ","ま","み","む","め","も","や","ゆ","よ","ら","り","る","れ","ろ","わ","を","ん"]
    let images : [String] = ["a.png","i.png","u.png","e.png","o.png","ka.png","ki.png","ku.png","ke.png","ko.png","sa.png","si.png","su.png","se.png","so.png","ta.png","ti.png","tu.png","te.png","to.png","na.png","ni.png","nu.png","ne.png","no.png","ha.png","hi.png","fu.png","he.png","ho.png","ma.png","mi.png","mu.png","me.png","mo.png","ya.png","yu.png","yo.png","ra.png","ri.png","ru.png","re.png","ro.png","wa.png","wo.png","nn.png",]
    let details :[String] =
        ["親指を横に出したグーの形をする","小指を立てる親指は中でも外でも良い","人差し指と中指を立てる","指の腹を第一関節につけるようにする","手を筒のように丸める","人差し指を立てて中指の第二関節に親指をつける","影絵の時の狐の形をする","揃えた四本指を第一関節で少し内側に曲げる","敬礼のように指を立て親指を曲げる","カタカナの「コ」の上の部分のように直角に曲げる小指を相手に見せる","グーの形親指は外に出す","親指を立て、人差し指と中指を横にする","自分から見てカタカナの「ス」に見えるようにする","中指を立てて他の指は握る","目の前のものを「それ」と刺す仕草","親指を立てて握り拳を作る親指の腹を相手に見せるように","小指を立てて他の指先を合わせる","小指と薬指を立てて親指の先に人差し指と中指の先をつける","指を揃えて掌を相手に向ける","人差し指と中指を立てる","人差し指と中指を下に向ける","人差し指と中指を横にする","人差し指を鍵型に曲げる","木の根のように下向きにして開く","人差し指でカタカナの「ノ」を空書する","人差し指と中指を前方斜め下に出す","人差し指を立てて指の腹を相手に向ける","自分から見て親指と人差し指でカタカナの「フ」を作る","手を下向けにし親指と小指を出して「へ」の形を作る他の指を曲げる","手の甲を相手に向けて指全部を少し内側に曲げる","人差し指と中指と薬指を開いて伸ばして下に向ける","人差し指と中指と薬指を横にする","親指と人差し指でL字を作る","親指と人差し指を付けて他の指を立てて目の形を作る","親指と人差し指を合わせる","小指と親指を立てて他の指を握る","手の甲を相手に向けて人差し指と中指と薬指を立てる","手の甲を相手に向けて親指以外の指の間を少し開き横に出す","人差し指と中指を絡ませる","人差し指と中指の二本指で「リ」を書くようにする","小指と薬指を折って他の指を立てて相手から「ル」に見えるようにする","親指と人差し指を立てて相手から「レ」になるようにする","人差し指と中指を合わせて鍵の形にする","掌を相手に見せて人差し指と中指と薬指を立てる","「お」と同じくして手前に引く","人差し指でカタカナの「ン」を空書する",]
    
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
