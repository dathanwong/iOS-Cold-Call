//
//  ViewController.swift
//  ColdCall
//
//  Created by Dathan Wong on 10/11/20.
//  Copyright © 2020 Dathan Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBAction func coldCallPressed(_ sender: UIButton) {
        updateUI()
    }
    
    var names = ["Tom", "Bryant", "Cody", "Yuanga", "Judy", "John"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    func updateUI(){
        nameLabel.text = names[Int.random(in: 0..<names.count)]
        let randNum = Int.random(in: 1...5)
        numberLabel.text = String(randNum)
        switch randNum {
        case 1:
            numberLabel.textColor = UIColor.red
        case 2:
            numberLabel.textColor = UIColor.red
        case 3:
            numberLabel.textColor = UIColor.orange
        case 4:
            numberLabel.textColor = UIColor.orange
        case 5:
            numberLabel.textColor = UIColor.green
        default:
            numberLabel.textColor = UIColor.black
        }
    }
    
}

