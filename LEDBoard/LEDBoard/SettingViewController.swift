//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by 병욱 on 2022/12/28.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject{
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {

    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var yelloButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    weak var delegate: LEDBoardSettingDelegate?
    var ledText: String?
    var textColor: UIColor = .yellow  // 초기화
    var backgroundColor: UIColor = .black  // 초기화
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()  // 뷰가 로드될 때 해당 함수 실행되어야 함
    }
    
    // 입력 및 선택된 label, 글자 색상, 배경 색상 가져오기
    private func configureView(){
        if let ledText = self.ledText{
            self.textField.text = ledText
        }
        self.changeTextColor(color: textColor)
        self.changeBackgroundColorButton(color: backgroundColor)
    }
    
    // sender가 현재 선택된 버튼 표시
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == self.yelloButton {
            self.changeTextColor(color: .yellow)
            self.textColor = .yellow
        } else if sender == self.purpleButton{
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        } else {
            self.changeTextColor(color: .green)
            self.textColor = .green
        }
    }
    
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        if sender == self.blackButton{
            self.changeBackgroundColorButton(color: .black)
            self.backgroundColor = .black
        } else if sender == self.blueButton{
            self.changeBackgroundColorButton(color: .blue)
            self.backgroundColor = .blue
        } else{
            self.changeBackgroundColorButton(color: .orange)
            self.backgroundColor = .orange
        }
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
        self.delegate?.changedSetting(
            text: self.textField.text,
            textColor: self.textColor,
            backgroundColor: self.backgroundColor
        )
        self.navigationController?.popViewController(animated: true)
    }
    
    // UIColor가 특정 색상일 경우 해당 색상만 alpha 값 1로 변경(선택된 효과)
    private func changeTextColor(color: UIColor){
        self.yelloButton.alpha = color == UIColor.yellow ? 1 : 0.2
        self.purpleButton.alpha = color == UIColor.purple ? 1 : 0.2
        self.greenButton.alpha = color == UIColor.green ? 1 : 0.2
    }
    
    private func changeBackgroundColorButton(color: UIColor){
        self.blackButton.alpha = color == UIColor.black ? 1 : 0.2
        self.blueButton.alpha = color == UIColor.blue ? 1 : 0.2
        self.orangeButton.alpha = color == UIColor.orange ? 1 : 0.2
    }
}
