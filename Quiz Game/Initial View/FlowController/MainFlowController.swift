//
//  MainFlowController.swift
//  table setp
//
//  Created by Carl Wainwright on 20/12/2019.
//  Copyright © 2019 Carl Wainwright. All rights reserved.
//

import Foundation
import UIKit

class MainFlowController {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func showMain() {
        MainFactory.PushIn(navigationController: navigationController)
        
    }
    
    func showQuestions(quizName: String) {
        QuestionsFactory.PushIn(navigationController: navigationController, quizName: quizName)
    }
}
