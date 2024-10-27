//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by roman
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        Question(text: "test1", answer: "True"),
        Question(text: "test2", answer: "True"),
        Question(text: "test3", answer: "False")
  
    ]
    
    var currentNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
       
        
     
        if userAnswer == quiz[currentNumber].answer {
                print("right")
            }
            else {
                print("wrong")
            }
            
            
           
        if (currentNumber + 1 < quiz.count ){
            currentNumber += 1
         
        } else if (currentNumber + 1 >= quiz.count){
            currentNumber = 0
          
        }
            
        updateUI()
        
        
     
        
    }
    
    func updateUI(){
        questionLabel.text = quiz[currentNumber].text
    }
}

