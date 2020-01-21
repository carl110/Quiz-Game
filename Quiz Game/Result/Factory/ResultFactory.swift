//
//  ResultFactory.swift
//  table setp
//
//  Created by Carl Wainwright.
//  Copyright © 2019 Carl Wainwright. All rights reserved.
//

import Foundation
import UIKit

class ResultFactory {
    
    static func PushIn(navigationController: UINavigationController, result: String) {
        
        let storyBoard = UIStoryboard(name: "Result", bundle: nil).instantiateInitialViewController() as! ResultViewController
        let flowController = ResultFlowController(navigationController: navigationController)
        let viewModel = ResultViewModel(result: result)
        
        storyBoard.assignDependancies(flowController: flowController, viewModel: viewModel)
        
        
        navigationController.pushViewController(storyBoard, animated: true)
    }
}
