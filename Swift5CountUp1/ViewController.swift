//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by 山岡巧 on 2020/07/27.
//  Copyright © 2020 takumi.yamaoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    var count = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()

        //　ラベルの文字を０と表示させたい
        countLabel.text = "0"
        
    }
    
    @IBAction func plus(_ sender: Any) {
        
        // カウントアップさせる
        count = count + 1
        
        // ラベルに文字を反映
        countLabel.text = String(count)
        
        // 色を１０以上になったら黄色に変更したい
        if count >= 10 {
            changeTextColor()
        }
        
    }
    @IBAction func minus(_ sender: Any) {
        // カウントダウンさせたい
        count = count - 1
        
        // ラベルに文字を反映
        countLabel.text = String(count)
        
        // 色が０以下になったら白に変更したい
        if count <= 0 {
            resetColor()
        }
    
    }
    
    // 新しくメソッドを作成
    func changeTextColor() {
        
        countLabel.textColor = .yellow
    }
    
    func resetColor() {
        countLabel.textColor = .white
    }
    

}

