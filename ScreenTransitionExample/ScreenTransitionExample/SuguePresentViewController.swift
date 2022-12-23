//
//  SuguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 병욱 on 2022/12/23.
//

import UIKit

class SuguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
