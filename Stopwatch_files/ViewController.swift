//
//  ViewController.swift
//  Stopwatch
//
//  Created by Nishita Shetty on 2/19/17.
//  Copyright © 2017 Nishita Shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var timeDisplay: UILabel!
    let stopwatch = StopWatch() //create instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateTimeDisplay), userInfo: nil, repeats: true)
        stopwatch.start()
    }
    func updateTimeDisplay(_ timer: Timer) {
        if stopwatch.started {
            timeDisplay.text = stopwatch.timePassedDisplay
        } else {timer.invalidate()
        }
    }
    @IBAction func stopButton(_ sender: UIButton) {
        stopwatch.stop()
    }

    

}

