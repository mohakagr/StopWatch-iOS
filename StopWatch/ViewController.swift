//
//  ViewController.swift
//  StopWatch
//
//  Created by Mohak on 28/01/16.
//  Copyright © 2016 Mohak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    var timer = NSTimer()
    var timerValue = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setTimer() {
        timerValue++
        timerLabel.text = String(timerValue)
    }
    
    @IBAction func playCallback(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("setTimer"), userInfo: nil, repeats: true)
    }

    @IBAction func pauseCallback(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func stopCallback(sender: AnyObject) {
        timer.invalidate()
        timerValue = 0
        timerLabel.text = "0"
    }
}

