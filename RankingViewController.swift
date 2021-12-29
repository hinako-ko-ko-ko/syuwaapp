//
//  RankingViewController.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/12/27.
//

import UIKit
import RealmSwift

class RankingViewController:UIViewController {
    @IBAction func backbutton(){
        self.navigationController?.popViewController(animated: true)
    }
    @IBOutlet var tableView: UITableView! {
        didSet{
            tableView.delegate = self
            //デリゲートメソッドをViewControllerに書くよという設定
            tableView.dataSource = self
            
        }
    }
    var result: Results<QuizRecord>?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        result = realm.objects(QuizRecord.self)
    }
}
extension RankingViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return result?.count ?? 0
        //セルの数
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "rankingTableViewCell") as! RankingTableViewCell
            let record = self.result?[indexPath.row]
        cell.dateLabel.text = DateUtils.stringFromDate(date: record!.date, format: "MM月dd日")
            cell.titleLabel.text = record?.title
            cell.scoreLabel.text = String(record?.score ?? 0)

            return cell
        }
    }

class DateUtils {
    class func dateFromString(string: String, format: String) -> Date {
        let formatter: DateFormatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = format
        return formatter.date(from: string)!
    }

    class func stringFromDate(date: Date, format: String) -> String {
        let formatter: DateFormatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
}
