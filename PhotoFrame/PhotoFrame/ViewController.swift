//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 김한솔 on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var photoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "Sol의 Label"
        self.photoLabel.textColor = .systemBackground
        self.photoLabel.backgroundColor = .systemGray
        self.photoLabel.alpha = 0.5
        self.photoLabel.font = .systemFont(ofSize: 70)
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        self.photoLabel.text = "버튼이 눌러졌어요"
        self.photoLabel.backgroundColor = .systemRed
        self.photoLabel.textColor = .systemYellow
        self.photoLabel.alpha = 1
        self.photoLabel.font = .systemFont(ofSize: 30)
    }
    
    
}

