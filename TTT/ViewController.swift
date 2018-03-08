//
//  ViewController.swift
//  TTT
//
//  Created by Maria Stezhko on 3/7/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var clickCount = 0
    var currentColor: String = "grey"
    
    @IBAction func btn8(_ sender: UIButton) {
        btnClick(button: sender)
    }
    @IBAction func btn9(_ sender: UIButton) {
        btnClick(button: sender)
    }
    @IBAction func btn6(_ sender: UIButton) {
        btnClick(button: sender)
    }
    @IBAction func btn7(_ sender: UIButton) {
        btnClick(button: sender)
    }
    @IBAction func btn5(_ sender: UIButton) {
        btnClick(button: sender)
    }
    @IBAction func btn4(_ sender: UIButton) {
        btnClick(button: sender)
    }
    @IBAction func btn3(_ sender: UIButton) {
        btnClick(button: sender)
    }
    @IBAction func btn2(_ sender: UIButton) {
        btnClick(button: sender)
    }
    @IBAction func btn1(_ sender: UIButton) {
        btnClick(button: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func btnClick(button: UIButton) {
        if clickCount == 0 {
            button.backgroundColor = UIColor.red
            clickCount += 1
            currentColor = "red"
            button.isEnabled = false
        }
        else {
            clickCount += 1
            if currentColor == "red" {
                    button.backgroundColor = UIColor.blue
                    currentColor = "blue"
                    button.isEnabled = false
                }
                else {
                    button.backgroundColor = UIColor.red
                    currentColor = "red"
                    button.isEnabled = false
                }
            }
        }
        
    

}

