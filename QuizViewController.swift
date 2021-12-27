//
//  QuizViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/08/29.
//

import UIKit

class QuizViewController: UIViewController {
    
    
    //問題集を数えるための変数
    var quizArray = [Any]()
    
    //正解数を数えるための変数
    var correctAnser: Int = 0
    
    //クイズを表示するTextView
    @IBOutlet var quizTextView: UITextView!
    
    //選択肢のボタン
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    
    @IBOutlet var choiceButton3: UIButton!
   
    @IBOutlet weak var judgeImageView: UIImageView!
    
    
let images =  ["2a.png","2i.png","2u.png","2e.png","2o.png","2ka.png","2ki.png","2ku.png","2ke.png","2ko.png","2sa.png","2si.png","2su.png","2se.png","2so.png","2ta.png","2ti.png","2tu.png","2te.png","2to.png","2na.png","2ni.png","2nu.png","2ne.png","2no.png","2ha.png","2hi.png","2hu.png","2he.png","2ho.png","2ma.png","2mi.png","2mu.png","2me.png","2mo.png","2ya.png","2yu.png","2yo.png","2ra.png","2ri.png","2ru.png","2re.png","2ro.png","2wa.png","2wo.png","2nn.png",]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //quizArrayに問題文　4個の選択肢　答えの番号が入った配列を追加
        quizArray.append(["『あ』の手話はどちらでしょう","2a.png","選択肢２",2])
        quizArray.append(["『い』の手話はどちらでしょう","2i.png","選択肢２",2])
        quizArray.append(["『う』の手話はどちらでしょう","2u.png","選択肢２",2])
        quizArray.append(["『え』の手話はどちらでしょう","2e.png","選択肢２",2])
        quizArray.append(["『お』の手話はどちらでしょう","2o.png","選択肢２",2])
        quizArray.append(["『か』の手話はどちらでしょう","2ka.png","選択肢２",2])
        quizArray.append(["『き』の手話はどちらでしょう","2ki.png","選択肢２",2])
        quizArray.append(["『く』の手話はどちらでしょう","2ku.png","選択肢２",2])
        quizArray.append(["『け』の手話はどちらでしょう","2ke.png","選択肢２",2])
        quizArray.append(["『こ』の手話はどちらでしょう","2ko.png","選択肢２",2])
        quizArray.append(["『さ』の手話はどちらでしょう","2sa.png","選択肢２",2])
        quizArray.append(["『し』の手話はどちらでしょう","2si.png","選択肢２",2])
        quizArray.append(["『す』の手話はどちらでしょう","2su.png","選択肢２",2])
        quizArray.append(["『せ』の手話はどちらでしょう","2se.png","選択肢２",2])
        quizArray.append(["『そ』の手話はどちらでしょう","2so.png","選択肢２",2])
        quizArray.append(["『た』の手話はどちらでしょう","2ta.png","選択肢２",2])
        quizArray.append(["『ち』の手話はどちらでしょう","2ti.png","選択肢２",2])
        quizArray.append(["『つ』の手話はどちらでしょう","2tu.png","選択肢２",2])
        quizArray.append(["『て』の手話はどちらでしょう","2te.png","選択肢２",2])
        quizArray.append(["『と』の手話はどちらでしょう","2to.png","選択肢２",2])
        quizArray.append(["『な』の手話はどちらでしょう","2na.png","選択肢２",2])
        quizArray.append(["『に』の手話はどちらでしょう","2ni.png","選択肢２",2])
        quizArray.append(["『ぬ』の手話はどちらでしょう","2nu.png","選択肢２",2])
        quizArray.append(["『ね』の手話はどちらでしょう","2ne.png","選択肢２",2])
        quizArray.append(["『の』の手話はどちらでしょう","2no.png","選択肢２",2])
        quizArray.append(["『は』の手話はどちらでしょう","2ha.png","選択肢２",2])
        quizArray.append(["『ひ』の手話はどちらでしょう","2hi.png","選択肢２",2])
        quizArray.append(["『ふ』の手話はどちらでしょう","2hu.png","選択肢２",2])
        quizArray.append(["『へ』の手話はどちらでしょう","2he.png","選択肢２",2])
        quizArray.append(["『ほ』の手話はどちらでしょう","2ho.png","選択肢２",2])
        quizArray.append(["『ま』の手話はどちらでしょう","2ma.png","選択肢２",2])
        quizArray.append(["『み』の手話はどちらでしょう","2mi.png","選択肢２",2])
        quizArray.append(["『む』の手話はどちらでしょう","2mu.png","選択肢２",2])
        quizArray.append(["『め』の手話はどちらでしょう","2me.png","選択肢２",2])
        quizArray.append(["『も』の手話はどちらでしょう","2mo.png","選択肢２",2])
        quizArray.append(["『や』の手話はどちらでしょう","2ya.png","選択肢２",2])
        quizArray.append(["『ゆ』の手話はどちらでしょう","2yu.png","選択肢２",2])
        quizArray.append(["『よ』の手話はどちらでしょう","2yo.png","選択肢２",2])
        quizArray.append(["『ら』の手話はどちらでしょう","2ra.png","選択肢２",2])
        quizArray.append(["『り』の手話はどちらでしょう","2ri.png","選択肢２",2])
        quizArray.append(["『る』の手話はどちらでしょう","2ru.png","選択肢２",2])
        quizArray.append(["『れ』の手話はどちらでしょう","2re.png","選択肢２",2])
        quizArray.append(["『ろ』の手話はどちらでしょう","2ro.png","選択肢２",2])
        quizArray.append(["『わ』の手話はどちらでしょう","2wa.png","選択肢２",2])
        quizArray.append(["『を』の手話はどちらでしょう","2wo.png","選択肢２",2])
        quizArray.append(["『ん』の手話はどちらでしょう","2nn.png","選択肢２",2])
        
        
        //問題文シャッフル
        quizArray.shuffle()
        choiceQuiz()
        // Do any additional setup after loading the view.
        navigationController?.setNavigationBarHidden(true, animated: false)
        //隠す
        
    }
    
    
    func choiceQuiz(){
            //いちじ的にクイズを取り出しておく配列
            var tmpArray = quizArray[0] as![Any]
            // クイズの答えを取得
            let answer = tmpArray[1] as! String
            
            // 写真をランダムで3枚取得
            var choices = Array(images.shuffled()[0..<2])
            
            // 答えの画像を含んでいる場合は、もう一回取得し直す
            while choices.contains(answer) {
                choices = Array(images.shuffled()[0..<2])
            }
            
            // 答えを何番目にするかランダムに決める
            let answerIndex = Int.random(in: 0..<2)
            // 答えをanswerIndex番目に代入
            choices[answerIndex] = answer
            
            // ランダムな選択肢を配列に戻す
            for i in 0..<2 {
                tmpArray[i + 1] = choices[i]
            }
                    
                    // 答えが何番目か保存
                    tmpArray[3] = answerIndex + 1
                    // 元の配列に戻す
                    quizArray[0] = tmpArray
                    
                    //問題文を表示
                    quizTextView.text = tmpArray[0] as? String
                    
                    //選択肢ボタンにそれぞれの選択肢をセット
                    choiceButton1.setBackgroundImage(UIImage(named: tmpArray[1] as! String), for: .normal)
                    choiceButton2.setBackgroundImage(UIImage(named: tmpArray[2] as! String), for: .normal)
                 
                   
                }
     func performSegueToResult(){
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    
//segueを準備するときに呼ばれるメソッド
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultView"{
            
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.correctAnswer = self.correctAnser
        }
    }
        
    @IBAction func backbutton(){
        self.navigationController?.popViewController(animated: true)
    }
    
    
  @IBAction  func choiceAnswer(sender: UIButton) {
        
        let tmpArray = quizArray[0] as! [Any]
        
      
            if sender.tag  == (tmpArray[3] as! Int){
                correctAnser += 1
                print("正解")
                judgeImageView.image = UIImage(named: "correct")
            } else {
                print("不正解")
                judgeImageView.image = UIImage(named: "incorrect")
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.judgeImageView.isHidden = false
                self.choiceButton1.isEnabled = true
                self.choiceButton2.isEnabled = true
            
            }
         
        
        //といた問題をquizArrayから取り除く
        quizArray.remove(at: 0)
        
        //といた問題の合計があらかじめ設定していた問題数に達したら結果画面へ
        if quizArray.count == 0 {
            performSegueToResult()
        } else {
            choiceQuiz()
            
        }
            
        
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

