//
//  ViewController.swift
//  PROG8471 - Assignment 1
//
//  Created by Shaik Mathar Syed on 16/09/23.
//

import UIKit

class ViewController: UIViewController {
    var counterVal = 0
    var counterStep = 1
    @IBOutlet weak var stepStatus: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = String(counterVal)
        stepStatus.text = String("Current Step = 1")
    }
    @IBAction func counterAdd(_ sender: Any) {
        counterVal += counterStep
        counterLabel.text = String(counterVal)
    }
    @IBAction func counterMinus(_ sender: Any) {
        counterVal -= counterStep
        counterLabel.text = String(counterVal)
    }
    @IBAction func counterReset(_ sender: Any) {
        counterVal = 0
        counterStep = 1
        counterLabel.text = String(counterVal)
        stepStatus.text = String("Current Step = 1")
    }
    @IBAction func counterChangeStep(_ sender: Any) {
        counterStep = 2;
        stepStatus.text = String("Current Step = 2")
    }

}

