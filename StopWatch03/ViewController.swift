//
//  ViewController.swift
//  StopWatch03
//
//  Created by dit03 on 2019. 4. 2..
//  Copyright © 2019년 201820028이혜윤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TimeLabel: UILabel!
    var count = 0
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TimeLabel.text = String(count)
    }

    @IBAction func btnPlay(_ sender: Any) {
        if !myTimer.isValid {
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        } else {
            print("Timer가 작동중임")
        }
    }
    
    @IBAction func btnPause(_ sender: Any) {
        myTimer.invalidate()
    }
    
    @IBAction func btnStop(_ sender: Any) {
        myTimer.invalidate()
        count = 0
        TimeLabel.text = String(count)
    }
    
    @objc func updateTime() {
        count += 1
        TimeLabel.text = String(count)
    }
    
}

