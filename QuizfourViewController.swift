//
//  QuizfourViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/09/04.
//

import UIKit

class QuizfourViewController: UIViewController {

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
    
   
    
let images =  ["nani1.png","itu1.png","doko1.png","dare1.png","naze1.png","doudesuka1.png"]
    override func viewDidLoad() {
        super.viewDidLoad()

        //quizArrayに問題文　4個の選択肢　答えの番号が入った配列を追加
        quizArray.append(["なに　の手話はどれか","nani1.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["いつ　の手話はどれか","itu1.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["どこ　の手話はどれか","doko1.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["だれ　の手話はどれか","dare1.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["なぜ　の手話はどれか","naze1.png","選択肢２","選択肢３","選択肢４",2])
        quizArray.append(["どうですか　の手話はどれか","doudesuka1.png","選択肢２","選択肢３","選択肢４",2])
      
     
        
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
        performSegue(withIdentifier: "toResulttttView", sender: nil)
    }
    
//segueを準備するときに呼ばれるメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResulttttView"{
            let resultfourViewController = segue.destination as!  ResultfourViewController
            resultfourViewController.correctAnswer = self.correctAnser
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
