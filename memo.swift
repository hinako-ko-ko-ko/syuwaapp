//
//  memo.swift
//  syuwaapp
//
//  Created by 中井日向子 on 2021/12/27.
//

import Foundation
import RealmSwift
class Memo: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var content: String = ""
}
class QuizRecord: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var date: Date = .init()
    @objc dynamic var score: Int = 0
}
