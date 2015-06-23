//
//  ViewController.swift
//  SwiftApp_3
//
//  Created by listener on 15/6/23.
//  Copyright (c) 2015年 lxm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    var operand1: String = ""
    var operand2: String = ""
    var operate: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didClicked(sender: UIButton) {
        let value = sender.currentTitle
        
        if value == "C" {
            clear()
            return
        }
        else if value == "+" || value == "-" || value == "*" || value == "/" {
            operate = value!
            return
        }
        else if value == "=" {
            var result = 0
            switch operate {
                case "+":
                    result = operand1.toInt()! + operand2.toInt()!
                case "-":
                    result = operand1.toInt()! + operand2.toInt()!
                case "*":
                    result = operand1.toInt()! + operand2.toInt()!
                case "/":
                    result = operand1.toInt()! + operand2.toInt()!
                default:
                    result = 0
            }
            resultLabel.text = "\(result)"
            return
        }
        
        if operate == "" {
            operand1 = operand1 + value!
            resultLabel.text = operand1
        }
        else {
            operand2 = operand2 + value!
            resultLabel.text = operand2
        }
    }
    
    private func clear() {
        operand1 = ""
        operand2 = ""
        operate = ""
        resultLabel.text = "0"
    }

}

