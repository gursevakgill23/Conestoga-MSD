//
//  ViewController.swift
//  IncDecApp
//
//  Created by user202391 on 1/23/22.
//

import UIKit
var Counter=0
var Status=1
var Value=1

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        CountLabel.text=String(0)
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var CountLabel: UILabel!
    
    @IBAction func IncrementBtn(_ sender: Any) {
        Counter=Counter+Value
        CountLabel.text=String(Counter)
    }
    @IBAction func DecrementBtn(_ sender: Any) {
        Counter=Counter-Value
        CountLabel.text=String(Counter)
    }
    @IBAction func ResetBtn(_ sender: Any) {
        Counter=0
        Value=1
        CountLabel.text=String(Counter)
        
    }
    @IBAction func StepCntrlBtn(_ sender: Any) {
        if(Status==1){
            Status=2
            Value=2
        }
        else{
            Status=1
            Value=1
        }
        
    }
}

