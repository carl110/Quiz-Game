//
//  QuestionsFactory.swift
//  table setp
//
//  Created by Carl Wainwright.
//  Copyright © 2019 Carl Wainwright. All rights reserved.
//

import Foundation
import UIKit

class QuestionsFactory {
    
    static func PushIn(navigationController: UINavigationController, quizName: String) {
        
        let storyBoard = UIStoryboard(name: "Questions", bundle: nil).instantiateInitialViewController() as! QuestionsViewController
        let flowController = QuestionsFlowController(navigationController: navigationController)
        let viewModel = QuestionsViewModel(quizName: quizName)
        
        storyBoard.assignDependancies(flowController: flowController, viewModel: viewModel)
        
        navigationController.pushViewController(storyBoard, animated: true)
    }
}
