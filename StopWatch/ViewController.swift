//
//  ViewController.swift
//  StopWatch
//
//  Created by Tran, Sebastian on 11/11/25.
//

import UIKit

class ViewController: UIViewController {

    let stopwatch = Stopwatch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startButtonTapped (sender : UIButton)
    {
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateElaspedTimeLabel), userInfo: nil, repeats: true)
        stopwatch.start()
    }
    
    @IBAction func stopButtonTapped (sender : UIButton)
    {
        stopwatch.stop()
    }
    
    @IBOutlet weak var elaspedTimeLabel: UILabel!

    @objc func updateElaspedTimeLabel (timer : Timer){
        if stopwatch.isRunning {
            elaspedTimeLabel.text = stopwatch.elaspedTimeAsString
        }
        else
        {
            timer.invalidate()
        }
    }


}

