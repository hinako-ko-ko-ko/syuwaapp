//
//  MemoViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/12/27.
//

import UIKit
import RealmSwift

class MemoViewController: UIViewController, UITextFieldDelegate {
    
    let realm = try! Realm()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        
        let memos = read()
        print(memos)
        if let memo = memos.first {
            
            
            //メモのデータを入れる
        }
        //Realm内に保存したメモの情報を保持するための定数memoを初期化する　memoという代数に取得したデータを代入
        
        // Do any additional setup after loading the view.
    }
    func read() -> Results<Memo> {
        return realm.objects(Memo.self)
        //Realmにアクセス　メモの情報を読み出す（readしてる）
    }
    @IBAction func save(){
      
        
        //TextFieldに入力された文字列を取得
        //        let memo: Memo? = read()
        //すでに保存されているメモを取得
        //        if memo != nil{
        //            try! realm.write{
        //                memo!.title = title
        //                memo!.content = content
        //                //メモの更新をする　メモがnilでない時
        //            }
        //        }else{
        let newMemo = Memo()
       
        
        try! realm.write{
            realm.add(newMemo)
            //                //メモの新規作成
            //
            //        }
        }
        let alert: UIAlertController = UIAlertController(title: "成功" , message: "保存しました",
                                                         preferredStyle: .alert)//表示するアラート
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))//アラート内のボタンアクション
        present(alert, animated: true, completion: nil)//アラートを画面に表示する
        
        
    }
    func textFieldShouldReturn( textField:UITextField) -> Bool{
        textField.resignFirstResponder()
    }
}
