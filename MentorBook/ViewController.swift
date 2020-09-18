//
//  ViewController.swift
//  MentorBook
//
//  Created by tatsuomi kikawa on 2020/09/18.
//

import UIKit

class ViewController: UIViewController {
    
    //Mentorの配列を作成
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageview: UIImageView!
    @IBOutlet var namelabel: UILabel!
    @IBOutlet var corselabel: UILabel!
    //表示するメンターの番号
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //インスタンスの生成
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iphone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "WebS,WebD"))
        setUI()
    }
    func setUI() {
        imageview.image = mentorArray[index].getImage()
        namelabel.text = mentorArray[index].name
        corselabel.text = mentorArray[index].course
    }
    @IBAction func mae() {
        index = index - 1
        if index == -1 {
            index = 2
        }
        setUI()
    }
    @IBAction func tugi() {
        index = index + 1
        if index == 3 {
            index = 0
        }
        setUI()
    }


}

