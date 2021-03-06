//
//  QuestionsFlowController.swift
//  table setp
//
//  Created by Carl Wainwright.
//  Copyright © 2019 Carl Wainwright. All rights reserved.
//

import Foundation
import UIKit

class QuestionsFlowController {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    //Factory of view to show
    func showResult(result: String) {
        ResultFactory.PushIn(navigationController: navigationController, result: result)
    }
}
