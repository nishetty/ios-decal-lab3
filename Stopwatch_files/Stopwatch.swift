//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Nishita Shetty on 2/19/17.
//  Copyright © 2017 Nishita Shetty. All rights reserved.
//

import Foundation

class StopWatch {
    
    var startTime: Date? //optional, depends on whether started or not
    
    var timePassed: TimeInterval { //difference bw current time and start time
        if let startTime = self.startTime {
            return 0-startTime.timeIntervalSinceNow
        } else {
            return 0
        }
        
    }
    
    var timePassedDisplay: String {
        return String(format: "%02d:%02d.%02d",
                      Int(timePassed / 60), Int(timePassed.truncatingRemainder(dividingBy: 60)),
        Int((timePassed.truncatingRemainder(dividingBy: 60)*100).truncatingRemainder(dividingBy: 100)))
    }
    
    
    func start(){
        startTime = Date() //set to current
    
    }
    
    func stop() {
        startTime = nil //back to original
    
    }
    
    var started: Bool {
        return startTime != nil
    }
}
