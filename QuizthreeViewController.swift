//
//  QuizViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/08/29.
//

import UIKit
import RealmSwift
class QuizthreeViewController: UIViewController {
    
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
   
    
let images =  ["hajimemasite.png","ohayougozaimasu.png","konnnitiha.png","konnbannha.png","arigatougozaimasu.png","sayounara.png","gomennnasai.png","yorosikuonegaisimasu.png","ohisasiburidesu.png","douitasimasite.png","omedetougozaimasu.png"]
    override func viewDidLoad() {
        super.viewDidLoad()

        //quizArrayに問題文　4個の選択肢　答えの番号が入った配列を追加
        quizArray.append(["『はじめまして』の手話はどれでしょう","hajimemasite.png","選択肢２","選択肢３",2])
        quizArray.append(["『おはよう』の手話はどれでしょう","ohayougozaimasu.png","選択肢２","選択肢３",2])
        quizArray.append(["『こんにちは』の手話はどれでしょう","konnnitiha.png","選択肢２","選択肢３",2])
        quizArray.append(["『こんばんは』の手話はどれでしょう","konnbannha.png","選択肢２","選択肢３",2])
        quizArray.append(["『ありがとう』の手話はどれでしょう","arigatougozaimasu.png","選択肢２","選択肢３",2])
        quizArray.append(["『さようなら』の手話はどれでしょう","sayounara.png","選択肢２","選択肢３",2])
        quizArray.append(["『ごめんなさい』の手話はどれでしょう","gomennnasai.png","選択肢２","選択肢３",2])
        quizArray.append(["『よろしくお願いします』の手話はどれでしょう","yorosikuonegaisimasu.png","選択肢２","選択肢３",2])
        quizArray.append(["『お久しぶりです』の手話はどれでしょう","ohisasiburidesu.png","選択肢２","選択肢３",2])
        quizArray.append(["『どういたしまして』の手話はどれでしょう","douitasimasite.png","選択肢２","選択肢３",2])
        quizArray.append(["『おめでとう』の手話はどれでしょう","omedetougozaimasu.png","選択肢２","選択肢３",2])
       
     
        
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
            var choices = Array(images.shuffled()[0..<3])
            
            // 答えの画像を含んでいる場合は、もう一回取得し直す
            while choices.contains(answer) {
                choices = Array(images.shuffled()[0..<3])
            }
            
            // 答えを何番目にするかランダムに決める
            let answerIndex = Int.random(in: 0..<3)
            // 答えをanswerIndex番目に代入
            choices[answerIndex] = answer
            
            // ランダムな選択肢を配列に戻す
            for i in 0..<3 {
                tmpArray[i + 1] = choices[i]
            }
                    
                    // 答えが何番目か保存
                    tmpArray[4] = answerIndex + 1
                    // 元の配列に戻す
                    quizArray[0] = tmpArray
                    
                    //問題文を表示
                    quizTextView.text = tmpArray[0] as? String
                    
                    //選択肢ボタンにそれぞれの選択肢をセット
                    choiceButton1.setBackgroundImage(UIImage(named: tmpArray[1] as! String), for: .normal)
                    choiceButton2.setBackgroundImage(UIImage(named: tmpArray[2] as! String), for: .normal)
                    choiceButton3.setBackgroundImage(UIImage(named: tmpArray[3] as! String), for: .normal)
                   

                }
     func performSegueToResult(){
        performSegue(withIdentifier: "toResultttView", sender: nil)
    }
    @IBAction func backbutton(){
        self.navigationController?.popViewController(animated: true)
    }
//segueを準備するときに呼ばれるメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultttView"{
            let resultthreeViewController = segue.destination as!  ResultthreeViewController
            resultthreeViewController.correctAnswer = self.correctAnser
        }
    }
    @IBAction  func choiceAnswer(sender: UIButton) {
          
          let tmpArray = quizArray[0] as! [Any]
          
        
              if sender.tag  == (tmpArray[4] as! Int){
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
            //RealmにScoreを記録
                       let record = QuizRecord()
                       record.date = .init()
                       record.title = "挨拶"
                       record.score = correctAnser

                       let realm = try! Realm()

                       try! realm.write {
                           realm.add(record)
                       }
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
