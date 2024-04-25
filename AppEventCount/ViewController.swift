//
//  ViewController.swift
//  AppEventCount
//
//  Created by Alumno on 24/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willResignLabel: UILabel!
    @IBOutlet weak var willEnterLabel: UILabel!
    @IBOutlet weak var didEnterLabel: UILabel!
    
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignCount = 0
    var willEnterCount = 0
    var didEnterCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView(){
        didFinishLaunchingLabel.text = "The app has launched \(appDelegate.launchCount) time(s)"
        configurationForConnectingLabel.text = "Configuration for connection \(appDelegate.configurationForConnectingCount) time(s)"
        willConnectLabel.text = "Will connect \(willConnectCount) time(s)"
        didBecomeActiveLabel.text = "Did become active \(didBecomeActiveCount) time(s)"
        willResignLabel.text = "Will resign \(willResignCount) time(s)"
        willEnterLabel.text = "Will enter \(willEnterCount) time(s)"
        didEnterLabel.text = "Did enter \(didEnterCount) time(s)"
    }


}

