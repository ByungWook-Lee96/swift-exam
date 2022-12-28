//
//  ViewController.swift
//  PageMovingExample
//
//  Created by 병욱 on 2022/12/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapSettingButton(_ sender: UIBarButtonItem) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "SettingViewController") else { return }
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

