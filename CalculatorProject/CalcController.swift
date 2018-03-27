//
//  CalcController.swift
//  CalculatorProject
//
//  Created by Ylst, Zachary on 3/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class CalcController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    var numberOne: Int = 0
    var numberTwo: Int = 0
    var storedValue: Int = 0
    var operationCode: String = ""
    
    //MARK: Outlets
    
    @IBOutlet weak var answerField: UILabel!
    @IBOutlet weak var storedAnswerField: UILabel!
    @IBOutlet weak var operatorLabel: UILabel!
    @IBOutlet weak var storeLabel: UILabel!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var equalsButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var storeButton: UIButton!
    
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    
    //MARK: Actions
    
    @IBAction func addButtonSelect(_ sender: Any) {
        numberOne = Int(answerField.text!)!
        storedAnswerField.text = "\(numberOne) + "
        operationCode = "ADD"
        answerField.text = ""
        operatorLabel.text = "+"
    }
    @IBAction func subtractButtonSelect(_ sender: Any) {
        numberOne = Int(answerField.text!)!
        storedAnswerField.text = "\(numberOne) - "
        operationCode = "SUBTRACT"
        answerField.text = ""
        operatorLabel.text = "-"
    }
    @IBAction func multiplyButtonSelect(_ sender: Any) {
        numberOne = Int(answerField.text!)!
        storedAnswerField.text = "\(numberOne) x "
        operationCode = "MULTIPLY"
        answerField.text = ""
        operatorLabel.text = "x"
    }
    @IBAction func divideButtonSelect(_ sender: Any) {
        numberOne = Int(answerField.text!)!
        storedAnswerField.text = "\(numberOne) ÷ "
        operationCode = "DIVIDE"
        answerField.text = ""
        operatorLabel.text = "÷"
    }
    @IBAction func equalsButtonSelect(_ sender: Any) {
        numberTwo = Int(answerField.text!)!
        
        switch operationCode {
        case "ADD":
            answerField.text = "\(numberOne + numberTwo)"
        case "SUBTRACT":
            answerField.text = "\(numberOne - numberTwo)"
        case "MULTIPLY":
            answerField.text = "\(numberOne * numberTwo)"
        case "DIVIDE":
            if (numberTwo == 0) {
                answerField.text = "wut"
            }
            else {
                answerField.text = "\(numberOne / numberTwo)"
            }
        default:
            answerField.text = answerField.text
        }
    }
    @IBAction func resetButtonSelect(_ sender: Any) {
        numberOne = 0
        numberTwo = 0
        operationCode = ""
        answerField.text = ""
        storedAnswerField.text = ""
    }
    
    @IBAction func storeButtonSelect(_ sender: Any) {
        if (answerField.text != "") {
            storedValue = Int(answerField.text!)!
        }
        else {
            storedValue = 0
        }
        storeLabel.text = String(storedValue)
    }
    @IBAction func storeButtonDrag(_ sender: Any) {
        storedAnswerField.text! += "\(storeLabel.text!)"
        operatorLabel.text = ""
        answerField.text = storeLabel.text
    }
    
    @IBAction func oneButtonSelect(_ sender: Any) {
        answerField.text? += "1"
        storedAnswerField.text? += "1"
        operatorLabel.text = ""
    }
    @IBAction func twoButtonSelect(_ sender: Any) {
        answerField.text? += "2"
        storedAnswerField.text? += "2"
        operatorLabel.text = ""
    }
    @IBAction func threeButtonSelect(_ sender: Any) {
        answerField.text? += "3"
        storedAnswerField.text? += "3"
        operatorLabel.text = ""
    }
    @IBAction func fourButtonSelect(_ sender: Any) {
        answerField.text? += "4"
        storedAnswerField.text? += "4"
        operatorLabel.text = ""
    }
    @IBAction func fiveButtonSelect(_ sender: Any) {
        answerField.text? += "5"
        storedAnswerField.text? += "5"
        operatorLabel.text = ""
    }
    @IBAction func sixButtonSelect(_ sender: Any) {
        answerField.text? += "6"
        storedAnswerField.text? += "6"
        operatorLabel.text = ""
    }
    @IBAction func sevenButtonSelect(_ sender: Any) {
        answerField.text? += "7"
        storedAnswerField.text? += "7"
        operatorLabel.text = ""
    }
    @IBAction func eightButtonSelect(_ sender: Any) {
        answerField.text? += "8"
        storedAnswerField.text? += "8"
        operatorLabel.text = ""
    }
    @IBAction func nineButtonSelect(_ sender: Any) {
        answerField.text? += "9"
        storedAnswerField.text? += "9"
        operatorLabel.text = ""
    }
    @IBAction func zeroButtonSelect(_ sender: Any) {
        answerField.text? += "0"
        storedAnswerField.text? += "0"
        operatorLabel.text = ""
    }
}

