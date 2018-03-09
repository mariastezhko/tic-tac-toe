//
//  ViewController.swift
//  TTT
//
//  Created by Maria Stezhko on 3/7/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winnerLabel: UILabel!
    var clickCount = 0
    var currentColor: String = "gray"
    
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet var buttons: [UIButton]!
    
    // Needs refactoring
    @IBAction func btnAction(_ sender: UIButton) {
        switch sender {
            case btn1:
                btnClick(button: btn1)
                if ((btn2.backgroundColor == btn1.backgroundColor) && (btn3.backgroundColor == btn1.backgroundColor)) || ((btn4.backgroundColor == btn1.backgroundColor) && (btn7.backgroundColor == btn1.backgroundColor)) || ((btn5.backgroundColor == btn1.backgroundColor) && (btn9.backgroundColor == btn1.backgroundColor)) {
                    print("Congrats \(currentColor) won!")
                    winnerLabel.text = "Congrats \(currentColor) won!"
                    buttonsDisable()
                }
            case btn2:
                btnClick(button: btn2)
                if ((btn1.backgroundColor == btn2.backgroundColor) && (btn3.backgroundColor == btn2.backgroundColor)) || ((btn5.backgroundColor == btn2.backgroundColor) && (btn8.backgroundColor == btn2.backgroundColor)) {
                    print("Congrats \(currentColor) won!")
                    winnerLabel.text = "Congrats \(currentColor) won!"
                    buttonsDisable()
                }
            case btn3:
                btnClick(button: btn3)
                if ((btn2.backgroundColor == btn3.backgroundColor) && (btn1.backgroundColor == btn3.backgroundColor)) || ((btn5.backgroundColor == btn3.backgroundColor) && (btn7.backgroundColor == btn3.backgroundColor)) || ((btn6.backgroundColor == btn3.backgroundColor) && (btn9.backgroundColor == btn3.backgroundColor)) {
                    print("Congrats \(currentColor) won!")
                    winnerLabel.text = "Congrats \(currentColor) won!"
                    buttonsDisable()
                }
            case btn4:
                btnClick(button: btn4)
                if ((btn1.backgroundColor == btn4.backgroundColor) && (btn7.backgroundColor == btn4.backgroundColor)) || ((btn5.backgroundColor == btn4.backgroundColor) && (btn6.backgroundColor == btn4.backgroundColor)) {
                    print("Congrats \(currentColor) won!")
                    winnerLabel.text = "Congrats \(currentColor) won!"
                    buttonsDisable()
            }
            case btn5:
                btnClick(button: btn5)
                if ((btn2.backgroundColor == btn5.backgroundColor) && (btn8.backgroundColor == btn5.backgroundColor)) || ((btn4.backgroundColor == btn5.backgroundColor) && (btn6.backgroundColor == btn5.backgroundColor)) || ((btn1.backgroundColor == btn5.backgroundColor) && (btn9.backgroundColor == btn5.backgroundColor)) {
                    print("Congrats \(currentColor) won!")
                    winnerLabel.text = "Congrats \(currentColor) won!"
                    buttonsDisable()
            }
            case btn6:
                btnClick(button: btn6)
                if ((btn4.backgroundColor == btn6.backgroundColor) && (btn5.backgroundColor == btn6.backgroundColor)) || ((btn3.backgroundColor == btn6.backgroundColor) && (btn9.backgroundColor == btn6.backgroundColor)) {
                    print("Congrats \(currentColor) won!")
                    winnerLabel.text = "Congrats \(currentColor) won!"
                    buttonsDisable()
            }
            case btn7:
                btnClick(button: btn7)
                if ((btn1.backgroundColor == btn7.backgroundColor) && (btn4.backgroundColor == btn7.backgroundColor)) || ((btn8.backgroundColor == btn7.backgroundColor) && (btn9.backgroundColor == btn7.backgroundColor)) || ((btn5.backgroundColor == btn7.backgroundColor) && (btn3.backgroundColor == btn7.backgroundColor)) {
                    print("Congrats \(currentColor) won!")
                    winnerLabel.text = "Congrats \(currentColor) won!"
                    buttonsDisable()
            }
            case btn8:
                btnClick(button: btn8)
                if ((btn2.backgroundColor == btn8.backgroundColor) && (btn5.backgroundColor == btn8.backgroundColor)) || ((btn7.backgroundColor == btn8.backgroundColor) && (btn9.backgroundColor == btn8.backgroundColor)) {
                    print("Congrats \(currentColor) won!")
                    winnerLabel.text = "Congrats \(currentColor) won!"
                    buttonsDisable()
            }
            case btn9:
                btnClick(button: btn9)
                if ((btn6.backgroundColor == btn9.backgroundColor) && (btn3.backgroundColor == btn9.backgroundColor)) || ((btn8.backgroundColor == btn9.backgroundColor) && (btn7.backgroundColor == btn9.backgroundColor)) || ((btn5.backgroundColor == btn9.backgroundColor) && (btn1.backgroundColor == btn9.backgroundColor)) {
                    print("Congrats \(currentColor) won!")
                    winnerLabel.text = "Congrats \(currentColor) won!"
                    buttonsDisable()
            }
            default:
                break
        }
    }
    
    @IBAction func resetClicked(_ sender: UIButton) {
        clickCount = 0
        currentColor = "gray"
        for i in 0..<buttons.count {
            buttons[i].backgroundColor = UIColor.lightGray
            print("Enabling \(buttons[i])")
            buttons[i].isEnabled = true
        }
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
        

    func buttonsDisable() {
        for i in 0..<buttons.count {
            buttons[i].isEnabled = false
        }
    }

}

