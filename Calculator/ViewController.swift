//
//  ViewController.swift
//  Calculator
//
//  Created by Josh Winton on 11/14/16.
//  Copyright © 2016 MyOrganization. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var num1:Int = 0
    var num2:Int = 0
    var sum:Int = 0
    var isplus:Bool = false
    var isminus:Bool = false
    var ismult:Bool = false
    var isdiv:Bool = false
    
    @IBOutlet weak var display: UILabel!
    @IBAction func pressed(_ sender: Any) {
        display.text! += "1"
    }
    @IBAction func pressedtwo(_ sender: Any) {
        display.text! += "2"
    }
    @IBAction func pressedthree(_ sender: Any) {
        display.text! += "3"
    }
    @IBAction func pressedfour(_ sender: Any) {
        display.text! += "4"
    }
    @IBAction func pressedfive(_ sender: Any) {
        display.text! += "5"
    }
    @IBAction func pressedsix(_ sender: Any) {
        display.text! += "6"
    }
    @IBAction func pressedseven(_ sender: Any) {
        display.text! += "7"
    }
    @IBAction func pressedeight(_ sender: Any) {
        display.text! += "8"
    }
    @IBAction func pressednine(_ sender: Any) {
        display.text! += "9"
    }
    @IBAction func pressedzero(_ sender: Any) {
        display.text! += "0"
    }
    @IBAction func plus(_ sender: Any) {
        num1 = Int(display.text!)!
        display.text! = ""
        isplus = true
    }
    @IBAction func minus(_ sender: Any) {
        num1 = Int(display.text!)!
        display.text! = ""
        isminus = true
    }
    @IBAction func multiply(_ sender: Any) {
        num1 = Int(display.text!)!
        display.text! = ""
        ismult = true
    }
    @IBAction func divide(_ sender: Any) {
        num1 = Int(display.text!)!
        display.text! = ""
        isdiv = true
    }
    
    @IBAction func clear(_ sender: Any) {
        display.text! = ""
    }
    @IBAction func equals(_ sender: Any) {
        if isplus == true {
            num2 = Int(display.text!)!
            sum = num1 + num2
            display.text!=String(sum)
            isplus = false
        }
        if isminus == true {
            num2 = Int(display.text!)!
            sum = num1 - num2
            display.text!=String(sum)
            isminus = false
        }
        if ismult == true {
            num2 = Int(display.text!)!
            sum = num1 * num2
            display.text!=String(sum)
            ismult = false
        }
        if isdiv == true {
            num2 = Int(display.text!)!
            sum = num1 / num2
            display.text!=String(sum)
            isdiv = false
        }
    }
    
}
