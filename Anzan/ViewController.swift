//
//  ViewController.swift
//  Anzan
//
//  Created by 野崎絵未里 on 2019/11/24.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var numberLeft: UILabel!
    @IBOutlet weak var numberRight: UILabel!
    
    @IBOutlet weak var operationLabel: UILabel!
    @IBOutlet weak var answerText: UITextField!
    
    
    var leftNumber: Int = 0
    var rightNumber: Int = 0
    var operatorNumber: Int = 0
    var correctNumber: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        answerText.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        initNumber()
        
    }
    func initNumber() {
        answerText.text = ""
        leftNumber = Int.random(in: 1...999)
        numberLeft.text = String(leftNumber)
        rightNumber = Int.random(in: 1...999)
        numberRight.text = String(rightNumber)
        operatorNumber = Int.random(in: 0...3)
        if operatorNumber == 0 {
            operationLabel.text = "+"
            correctNumber = leftNumber + rightNumber
        } else if operatorNumber == 1 {
            operationLabel.text = "-"
            correctNumber = leftNumber - rightNumber
        } else if operatorNumber == 2 {
            operationLabel.text = "×"
            correctNumber = leftNumber * rightNumber
        } else if operatorNumber == 1 {
            operationLabel.text = "÷"
            correctNumber = leftNumber / rightNumber
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        answerText.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?){
        let resultViewController = segue.destination as! ResultViewController
        resultViewController.userNumber = Int(answerText.text!)
        resultViewController.correctNumber = correctNumber
    }
    
    
    @IBAction func checkAnswer() {
        performSegue(withIdentifier: "toResult", sender: nil)
    }
    
    
    
    
}

