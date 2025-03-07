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
        self.photoLabel.text = "First View"
        self.photoLabel.font = .systemFont(ofSize: 25)
        
        let fontSize = UIFont.boldSystemFont(ofSize: 35)
        let attributedString = NSMutableAttributedString(string: photoLabel.text!)
        attributedString.addAttribute(.font, value: fontSize, range: (photoLabel.text! as NSString).range(of: "First"))
        attributedString.addAttribute(.foregroundColor, value: UIColor.systemBlue, range: (photoLabel.text! as NSString).range(of: "First"))
        photoLabel.attributedText = attributedString
    }
    
}

