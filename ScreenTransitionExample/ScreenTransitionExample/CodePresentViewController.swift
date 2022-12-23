//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 병욱 on 2022/12/23.
//

import UIKit

protocol SendDataDelegate: AnyObject{
    func sendData(name: String)
}

class CodePresentViewController:UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delegate: SendDataDelegate?  // delegate 사용 시 weak 사용해야 함(강한 순환 참조가 걸려서 메모리 누수 발생될 수 있음)

    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name{
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "codePresentView에서 보내용")
        self.presentingViewController?.dismiss(animated: true)
    }
}
