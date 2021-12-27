//
//  QuizViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/08/29.
//

import UIKit

class QuiztwoViewController: UIViewController {
    
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
    @IBOutlet weak var judgeImageView: UIImageView!
    
   
    
let images =  ["1.png","2.png","3.png","4.png","5.png","6.png","7.png","8.png","9.png","0.png","2hyaku.png","2senn.png","2itioku.png",]
    override func viewDidLoad() {
        super.viewDidLoad()

        //quizArrayに問題文　4個の選択肢　答えの番号が入った配列を追加
        quizArray.append(["『１』の手話はどちらでしょう","1.png","選択肢２",2])
        quizArray.append(["『２』の手話はどちらでしょう","2.png","選択肢２",2])
        quizArray.append(["『３』の手話はどちらでしょう","3.png","選択肢２",2])
        quizArray.append(["『４』の手話はどちらでしょう","4.png","選択肢２",2])
        quizArray.append(["『５』の手話はどちらでしょう","5.png","選択肢２",2])
        quizArray.append(["『６』の手話はどちらでしょう","6.png","選択肢２",2])
        quizArray.append(["『７』の手話はどちらでしょう","7.png","選択肢２",2])
        quizArray.append(["『８』の手話はどちらでしょう","8.png","選択肢２",2])
        quizArray.append(["『９』の手話はどちらでしょう","9.png","選択肢２",2])
        quizArray.append(["『０』の手話はどちらでしょう","0.png","選択肢２",2])
        quizArray.append(["『１００』の手話はどちらでしょう","2hyaku.png","選択肢２",2])
        quizArray.append(["『１０００』の手話はどちらでしょう","2senn.png","選択肢２",2])
        quizArray.append(["『１００００』の手話はどちらでしょう","2itioku.png","選択肢２",2])
     
        
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
        performSegue(withIdentifier: "toResulttView", sender: nil)
    }
    
//segueを準備するときに呼ばれるメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResulttView"{
            let resulttwoViewController = segue.destination as! ResulttwoViewController
            resulttwoViewController.correctAnswer = self.correctAnser
        }
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
