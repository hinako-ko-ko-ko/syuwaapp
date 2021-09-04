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
    @IBOutlet var choiceButton4: UIButton!
    
    
let images =  ["2a.png","2i.png","2u.png","2e.png","2o.png","2ka.png","2ki.png","2ku.png","2ke.png","2ko.png","2sa.png","2si.png","2su.png","2se.png","2so.png","2ta.png","2ti.png","2tu.png","2te.png","2to.png","2na.png","2ni.png","2nu.png","2ne.png","2no.png","2ha.png","2hi.png","2hu.png","2he.png","2ho.png","2ma.png","2mi.png","2mu.png","2me.png","2mo.png","2ya.png","2yu.png","2yo.png","2ra.png","2ri.png","2ru.png","2re.png","2ro.png","2wa.png","2wo.png","2nn.png",]
    override func viewDidLoad() {
        super.viewDidLoad()

        //quizArrayに問題文　4個の選択肢　答えの番号が入った配列を追加
        quizArray.append(["あ　の手話はどれか","2a.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["い　の手話はどれか","2i.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["う　の手話はどれか","2u.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["え　の手話はどれか","2e.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["お　の手話はどれか","2o.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["か　の手話はどれか","2ka.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["き　の手話はどれか","2ki.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["く　の手話はどれか","2ku.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["け　の手話はどれか","2ke.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["こ　の手話はどれか","2ko.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["さ　の手話はどれか","2sa.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["し　の手話はどれか","2si.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["す　の手話はどれか","2su.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["せ　の手話はどれか","2se.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["そ　の手話はどれか","2so.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["た　の手話はどれか","2ta.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["ち　の手話はどれか","2ti.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["つ　の手話はどれか","2tu.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["て　の手話はどれか","2te.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["と　の手話はどれか","2to.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["な　の手話はどれか","2na.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["に　の手話はどれか","2ni.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["ぬ　の手話はどれか","2nu.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["ね　の手話はどれか","2ne.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["の　の手話はどれか","2no.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["は　の手話はどれか","2ha.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["ひ　の手話はどれか","2hi.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["ふ　の手話はどれか","2hu.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["へ　の手話はどれか","2he.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["ほ　の手話はどれか","2ho.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["ま　の手話はどれか","2ma.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["み　の手話はどれか","2mi.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["む　の手話はどれか","2mu.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["め　の手話はどれか","2me.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["も　の手話はどれか","2mo.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["や　の手話はどれか","2ya.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["ゆ　の手話はどれか","2yu.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["よ　の手話はどれか","2yo.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["ら　の手話はどれか","2ra.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["り　の手話はどれか","2ri.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["る　の手話はどれか","2ru.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["れ　の手話はどれか","2re.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["ろ　の手話はどれか","2ro.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["わ　の手話はどれか","2wa.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["を　の手話はどれか","2wo.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["ん　の手話はどれか","2nn.png","選択肢２","選択肢３","選択肢４",2])
        
        
        //問題文シャッフル
        quizArray.shuffle()
        choiceQuiz()
        // Do any additional setup after loading the view.
    }
    func choiceQuiz(){
            //いちじ的にクイズを取り出しておく配列
            var tmpArray = quizArray[0] as![Any]
            // クイズの答えを取得
            let answer = tmpArray[1] as! String
            
            // 写真をランダムで3枚取得
            var choices = Array(images.shuffled()[0..<4])
            
            // 答えの画像を含んでいる場合は、もう一回取得し直す
            while choices.contains(answer) {
                choices = Array(images.shuffled()[0..<4])
            }
            
            // 答えを何番目にするかランダムに決める
            let answerIndex = Int.random(in: 0..<4)
            // 答えをanswerIndex番目に代入
            choices[answerIndex] = answer
            
            // ランダムな選択肢を配列に戻す
            for i in 0..<4 {
                tmpArray[i + 1] = choices[i]
            }
                    
                    // 答えが何番目か保存
                    tmpArray[5] = answerIndex + 1
                    // 元の配列に戻す
                    quizArray[0] = tmpArray
                    
                    //問題文を表示
                    quizTextView.text = tmpArray[0] as? String
                    
                    //選択肢ボタンにそれぞれの選択肢をセット
                    choiceButton1.setBackgroundImage(UIImage(named: tmpArray[1] as! String), for: .normal)
                    choiceButton2.setBackgroundImage(UIImage(named: tmpArray[2] as! String), for: .normal)
                    choiceButton3.setBackgroundImage(UIImage(named: tmpArray[3] as! String), for: .normal)
                    choiceButton4.setBackgroundImage(UIImage(named: tmpArray[4] as! String), for: .normal)
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
    @IBAction func choiceAnswer(sender: UIButton) {
        
        let tmpArray = quizArray[0] as! [Any]
        
        if tmpArray[5] as! Int == sender.tag {
            
            //正解すうを増やす
            correctAnser = correctAnser + 1
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
