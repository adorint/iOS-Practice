//
//  ViewController.swift
//  calculator
//
//  Created by Dorin on 2/16/20.
//  Copyright © 2020 Dorin. All rights reserved.
//

import UIKit

enum operation: String {
    
    case ADD = "+"
    case Subtraction = "-"
    case Multiplication  = "*"
    case Division = "/"
    case NULL = "Null"
    
}

class ViewController: UIViewController {

    @IBOutlet weak var outputLbl: UILabel!
    
    var nStr : String = "0"
    var number = ""
    var leftValue = ""
    var rightValue = ""
    var currentOperation:operation = .NULL
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // outputLbl.text = "0"
         outputLbl.text = nStr
    }

    @IBAction func pressedNum(_ sender: RoundButton) {
        if number.count <= 8{
        number += "\(sender.tag)"
        outputLbl.text = number
        }
    }
    
    @IBAction func allClear(_ sender: RoundButton) {
        number = ""
        leftValue = ""
        rightValue = ""
        currentOperation = .NULL
       // outputLbl.text = "0"
        outputLbl.text = nStr
    }
    @IBAction func dotPressed(_ sender: RoundButton) {
        if number.count <= 7{
        number += "."
        outputLbl.text = number
        }
    }
    @IBAction func equall(_ sender: RoundButton) {
        operation(operation: currentOperation)
    }
    @IBAction func substraction(_ sender: RoundButton) {
        operation(operation: .Subtraction)
    }
    @IBAction func add(_ sender: RoundButton) {
        operation(operation: .ADD)
    }
    @IBAction func multiply(_ sender: RoundButton) {
        operation(operation: .Multiplication)
    }
    @IBAction func division(_ sender: RoundButton) {
        operation(operation: .Division)
    }
    @IBAction func clearPressed(_ sender: RoundButton) {
        
        for i in 0...10000{
        let io = String(number.dropLast())
        outputLbl.text = io
        }
    }
    
    func operation(operation : operation){
        if currentOperation != .NULL{
            if number != ""{
            rightValue = number
            number = ""
            }
            if currentOperation == .ADD{
                result = "\(Double(leftValue)! + Double(rightValue)!)"
            }else if currentOperation == .Subtraction{
                result = "\(Double(leftValue)! - Double(rightValue)!)"
            }else if currentOperation == .Multiplication{
                result = "\(Double(leftValue)! * Double(rightValue)!)"
            }else if currentOperation == .Division{
                result = "\(Double(leftValue)! / Double(rightValue)!)"
            }
            leftValue = result
            outputLbl.text = result
        }
        else{
            leftValue = number
            number = ""
            currentOperation = operation
        }
    }
}

