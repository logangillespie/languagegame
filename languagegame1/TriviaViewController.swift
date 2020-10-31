//
//  TriviaViewController.swift
//  languagegame1
//
//  Created by Thuyvan on 10/7/20.
//  Copyright © 2020 Thuyvan. All rights reserved.
//

import UIKit

/* website used: https://www.seemuapps.com/swift-make-a-trivia-quiz-game */

class TriviaViewController: UIViewController {

    @IBOutlet weak var triviaImage: UILabel!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    
    struct Question {
          let question: String
          let answers: [String]
          let correctAnswer: Int
      }
      
      
      var questions: [Question] = [
          Question(
              question: "What is the correct term to say hello?",
              answers: ["Hello", "Hola", "Hallo", "Ciao"],
              correctAnswer: 2),
         /* Question(
              question: "Have you subscrbed to Seemu Apps",
              answers: ["Yes", "No", "I will", "No Thanks"],
              correctAnswer: 0),
          Question(
              question: "What is the Capital of Australia?",
              answers: ["Sydney", "Melbourne", "Adelaide", "Canberra"],
              correctAnswer: 3) */
      ]
      
      var currentQuestion: Question?
      var currentQuestionPos = 0
      
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButton1(_ sender: Any) {
        checkAnswer(idx:0)
    }
    @IBAction func onButton2(_ sender: Any) {
        checkAnswer(idx:1)
    }
    @IBAction func onButton3(_ sender: Any) {
          checkAnswer(idx:2)
    }
    @IBAction func onButton4(_ sender: Any) {
          checkAnswer(idx:3)
    }
    
    // Check if an answer is correct then load the next question
    func checkAnswer(idx: Int) {
        if(idx == currentQuestion!.correctAnswer) {
           // noCorrect += 1 //
        }
        loadNextQuestion()
    }
    
    func loadNextQuestion() {
        // Show next question
        if(currentQuestionPos + 1 < questions.count) {
            currentQuestionPos += 1
            currentQuestion = questions[currentQuestionPos]
            //setQuestion()
        // If there are no more questions show the results
        } else {
            performSegue(withIdentifier: "sgShowResults", sender: nil)
        }
        

    }
    
    // Set labels and buttions for the current question
   /* func setQuestion() {
        lblQuestion.text = currentQuestion!.question
        answer0.setTitle(currentQuestion!.answers[0], for: .normal)
        answer1.setTitle(currentQuestion!.answers[1], for: .normal)
        answer2.setTitle(currentQuestion!.answers[2], for: .normal)
        answer3.setTitle(currentQuestion!.answers[3], for: .normal)
        lblProgress.text = "\(currentQuestionPos + 1) / \(questions.count)"
    } */
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
