//
//  Stopwatch.swift
//  StopWatch
//
//  Created by Tran, Sebastian on 11/11/25.
//
import Foundation

class Stopwatch
{
    private var startTime: NSDate?
    
    var elaspedTime: TimeInterval
    {
        if let startTime = self.startTime
        {
            return -1 * startTime.timeIntervalSinceNow
        }
        else
        {
            return 0
        }
    }
    
    var elaspedTimeAsString : String
    {
        
    }
    
    func start ()
    {
        startTime = NSDate()
    }
    
    func stop ()
    {
        startTime = nil
    }
}
