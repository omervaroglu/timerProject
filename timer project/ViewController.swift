//
//  ViewController.swift
//  timer project
//
//  Created by Omer  on 24.11.2018.
//  Copyright © 2018 Omer Varoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel1: UILabel!
    @IBOutlet weak var inputLabel: UILabel!
    
    
    var timer = Timer()
    var counter = 0
    var secondcounter = 0
    
    @IBAction func stepper(_ sender: UIStepper) {
        counter = Int(sender.value)
        secondcounter = Int(sender.value)
        inputLabel.text = String(counter)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func start(_ sender: UIButton) {
        print(counter)
        print(secondcounter)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerfunc), userInfo: nil, repeats: true)
        if counter == 0{
            timer.invalidate() // use for finish.
            textLabel1.text = "time is up!"
        }
        counter = secondcounter
        
    }
    
    @objc func timerfunc() {
        print("func \(counter)")
        counter = counter - 1 // because textlabel show yourself after one second. I couldn't solve the problem so i could this.
        textLabel1.text = String(counter)
        
        if (counter == 0 ){
            timer.invalidate()
            textLabel1.text = "time is up!"
        }
    }
}
