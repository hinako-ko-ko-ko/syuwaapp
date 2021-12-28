//
//  RankingViewController.swift
//  syuwaapp
//
//  Created by Masakaz Ozaki on 2021/12/28.
//

import UIKit
import RealmSwift

class RankingViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
//            tableView.register(RankingTableViewCell.self, forCellReuseIdentifier: "rankingTableViewCell")
        }
    }
    
    var result: Results<QuizRecord>?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let realm = try! Realm()
        result = realm.objects(QuizRecord.self)
    }
}

extension RankingViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return result?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rankingTableViewCell") as! RankingTableViewCell
        let record = self.result?[indexPath.row]
        cell.dateLabel.text = record?.date.description
        cell.titleLabel.text = record?.title
        cell.scoreLabel.text = String(record?.score ?? 0)
        
        return cell
    }
}
