//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 병욱 on 2022/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "삶이 있는 한 희망은 있다.", name: "키케로"),
        Quote(contents: "진정으로 웃으려면 고통을 참아야하며 , 나아가 고통을 즐길 줄 알아야 해.", name: "찰리 채플린"),
        Quote(contents: "자신감 있는 표정을 지으면 자신감이 생긴다.", name: "찰스다윈"),
        Quote(contents: "사람이 여행을 하는 것은 도착하기 위해서가 아니라 여행하기 위해서이다.", name: "괴테"),
        Quote(contents: "1퍼센트의 가능성, 그것이 나의 길이다.", name: "나폴레옹")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5))  // 0 ~ 4 사이의 난수를 만들어 줌
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

