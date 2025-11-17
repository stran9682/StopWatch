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
    
    var isRunning: Bool = false
    
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
        let minutes = Int(elaspedTime) / 60
        let seconds = Int(elaspedTime) % 60
        let milliseconds = Int((elaspedTime - Double(seconds)) * 10)
        
        return String(format: "%02d:%02d.%d", minutes, seconds, milliseconds)
    }
    
    func start ()
    {
        isRunning = true
        startTime = NSDate()
    }
    
    func stop ()
    {
        isRunning = false
        startTime = nil
    }
}
