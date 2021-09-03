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
    
    
let images =  ["2a.png","2i.png","2u.png","2e.png","2o.png","2ka.png","2ki.png","2ku.png","2ke.png","2ko.png","2sa.png","2si.png","2su.png","2se.png","2so.png","2ta.png","2ti.png","2tu.png","2te.png","2to.png","2na.png","2ni.png","2nu.png","2ne.png","2no.png","2ha.png","2hi.png","2hu.png","2he.png","2ho.png","2ma.png","2mi.png","2mu.png","2me.png","2mo.png","2ya.png","2yu.png","2yo.png","2ra.png","2ri.png","2ru.png","2re.png","2ro.png","2wa.png","2wo.png","2nn.png","hajimemasite.png","ohayougozaimasu.png","konnnitiha.png","konnbannha.png","arigatougozaimasu.png","sayounara.png","gomennnasai.png","yorosikuonegaisimasu.png","ohisasiburidesu.png","douitasimasite.png","omedetougozaimasu.png","hajimemasite2.png","ohayougozaimasu2.png","konnnitiha2.png","konnbannha2.png","arigatougozaimasu2.png","sayounara2.png","gomennnasai2.png","yorosikuonegaisimasu2.png","ohisasiburidesu2.png","douitasimasite2.png","omedetougozaimasu2.png","hajimemasite3.png","ohayougozaimasu3.png","ohayougozaimasu3.png","ohayougozaimasu3.png","arigatougozaimasu3.png","sayounara3.png","gomennnasai3.png","yorosikuonegaisimasu3.png","ohisasiburidesu3.png","douitasimasite3.png","omedetougozaimasu3.png","hajimemasite4.png","ohayougozaimasu4.png","ohayougozaimasu4.png","ohayougozaimasu4.png","arigatougozaimasu4.png","sayounara4.png","gomenn4.png","yorosikuonegaisimasu4.png","ohisasiburidesu4.png","douitasimasite4.png","omedetougozaimasu4.png","nani1.png","itu1.png","doko1.png","dare1.png","naze1.png","doudesuka1.png","nani2.png","itu2.png","doko2.png","dare2.png","naze2.png","doudesuka2.png","nani3.png","itu3.png","nani1.png","dare3.png","naze3.png","doudesuka3.png","nani4.png","itu4.png","nani2.png","dare4.png","naze4.png","doudesuka4.png","1.png","2.png","3.png","4.png","5.png","6.png","7.png","8.png","9.png","0.png","2hyaku.png","2senn.png","2itioku.png",]
    override func viewDidLoad() {
        super.viewDidLoad()

        //quizArrayに問題文　３個の選択肢　答えの番号が入った配列を追加
        quizArray.append(["こんにちはの手話はどれか","2a.peg","選択肢２","選択肢３",2])
        quizArray.append(["こんにちはの手話はどれか","選択肢１","選択肢２","選択肢３",1])
        quizArray.append(["問題文３","選択肢１","選択肢２","選択肢３",3])
         
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
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    @IBAction func choiceAnswer(sender: UIButton) {
        
        let tmpArray = quizArray[0] as! [Any]
        
        if tmpArray[4] as! Int == sender.tag {
            
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
