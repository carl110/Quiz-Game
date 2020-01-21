//
//  ViewController.swift
//  Quiz Game
//
//  Created by Carl Wainwright on 16/01/2020.
//  Copyright © 2020 Carl Wainwright. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    fileprivate var mainFlowController: MainFlowController!
    

    @IBOutlet weak var testButton: UIButton!
    
    func assignDependancies(mainFlowController: MainFlowController) {
        self.mainFlowController = mainFlowController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func testButton(_ sender: Any) {
        mainFlowController.showQuestions(quizName: "Test")
    }
    
}

