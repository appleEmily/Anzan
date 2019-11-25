
//
//  ResultViewController.swift
//  Anzan
//
//  Created by 野崎絵未里 on 2019/11/24.
//  Copyright © 2us019 emily.com. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var correctAnswerLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    var userNumber: Int!
    var correctNumber: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        correctAnswerLabel.text = String(correctNumber)
        if userNumber == correctNumber {
            resultImage.image = UIImage(named: "correct.png")
        } else {
            resultImage.image = UIImage(named: "incorrect.png")
        }

        // Do any additional setup after loading the view.
    }
    @IBAction func back() {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
