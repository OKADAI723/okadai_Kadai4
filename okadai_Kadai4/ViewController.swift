//
//  ViewController.swift
//  okadai_Kadai4
//
//  Created by Yudai Fujioka on 2021/07/27.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var resultLabel: UILabel! {
        didSet {
            resultLabel.text = countNum.description
        }
    }
    @IBOutlet private weak var countUpButton: UIButton! {
        didSet {
            countUpButton.addTarget(self, action: #selector(tappedCountUpButton), for: .touchUpInside)
        }
    }
    @IBOutlet private weak var clearButton: UIButton! {
        didSet {
            clearButton.addTarget(self, action: #selector(tappedClearButton), for: .touchUpInside)
        }
    }
    
    private var countNum : Int = 0
    
}

@objc private extension ViewController {
    //インクリメントを行う
    func tappedCountUpButton() {
        countNum += 1
        resultLabel.text = countNum.description
    }
    //ラベルをリセットする
    func tappedClearButton() {
        countNum = 0
        resultLabel.text = countNum.description
    }
}

