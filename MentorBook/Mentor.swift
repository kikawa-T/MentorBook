//
//  Mentor.swift
//  MentorBook
//
//  Created by tatsuomi kikawa on 2020/09/18.
//

import UIKit
//クラスの作成
class Mentor {
    
    var name: String!
    var course: String!
    var imageName: String!
    //初期化（必須
    init(name:String, imageName:String, course:String) {
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    //顔写真を画像として習得する
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
