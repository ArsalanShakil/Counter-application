//
//  ViewController.swift
//  Task 1
//
//  Created by iosdev on 23.3.2021.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel:UILabel!
    @IBOutlet weak var stepperLabel:UILabel!
    @IBOutlet weak var stepper:UIStepper!
    @IBOutlet weak var plusButton:UIButton!
    @IBOutlet weak var minusButton:UIButton!
    
    let counter = Counter(0, to: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = String(counter.value)
        stepperLabel.text = String(Int(stepper.value))
    }
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        counter.inc(by: Int(stepper.value))
        counterLabel.text = String(counter.value)
        
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        counter.dec(by: Int(stepper.value))
        counterLabel.text = String(counter.value)
        
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        stepperLabel.text = String(Int(stepper.value))
    }
}
