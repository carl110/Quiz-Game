//
//  QuestionsViewController.swift
//  table setp
//
//  Created by Carl Wainwright.
//  Copyright © 2019 Carl Wainwright. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    fileprivate var flowController: QuestionsFlowController!
    fileprivate var viewModel: QuestionsViewModel!
    var answerOutput: [String] = []
    
    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionButton1: UIButton!
    @IBOutlet weak var questionButton2: UIButton!
    @IBOutlet weak var questionButton3: UIButton!
    @IBOutlet weak var questionButton4: UIButton!
    
    
    func assignDependancies(flowController: QuestionsFlowController, viewModel: QuestionsViewModel) {
        self.viewModel = viewModel
        self.flowController = flowController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageSetUp()
        questionSetup()
    }
    
    //Image placeholder to change image nby quiz
    func imageSetUp() {
        questionImage.image = UIImage(named: "test")
    }
    
    func questionSetup() {
        if testQuestionArray.count == 0 {
            
            //When all questions answered goto next screen, using extension to pull most occured output
            flowController.showResult(result: commonElementsInArray(stringArray: answerOutput))
        } else {
            
            //Set labels from the array for questions
            questionLabel.text = testQuestionArray.first?.question
            questionButton1.setTitle(testQuestionArray.first?.answer1, for: .normal)
            questionButton2.setTitle(testQuestionArray.first?.answer2, for: .normal)
            questionButton3.setTitle(testQuestionArray.first?.answer3, for: .normal)
            questionButton4.setTitle(testQuestionArray.first?.answer4, for: .normal)

        }
    }
    
    func buttonAction(resultToAnswer: String) {
        
        //Remove question from array and add output to new array
        testQuestionArray.removeFirst()
        answerOutput.append(resultToAnswer)
        questionSetup()
    }
    
    @IBAction func questionButton1(_ sender: Any) {
        buttonAction(resultToAnswer: "Q1")
    }
    
    @IBAction func questionButton2(_ sender: Any) {
        buttonAction(resultToAnswer: "Q2")
    }
    
    @IBAction func questionButton3(_ sender: Any) {
        buttonAction(resultToAnswer: "Q3")
    }
    @IBAction func questionButton4(_ sender: Any) {
        buttonAction(resultToAnswer: "Q4")
    }
}
