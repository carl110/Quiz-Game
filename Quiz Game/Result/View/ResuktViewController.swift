//
//  ResultViewController.swift
//  table setp
//
//  Created by Carl Wainwright.
//  Copyright © 2019 Carl Wainwright. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    fileprivate var flowController: ResultFlowController!
    fileprivate var viewModel: ResultViewModel!
    
    private var result = String()
    
    @IBOutlet weak var resultSummary: UILabel!
    
    func assignDependancies(flowController: ResultFlowController, viewModel: ResultViewModel) {
        self.viewModel = viewModel
        self.flowController = flowController
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        result = viewModel.result

        setupResultSummary()
    }
    

    func setupResultSummary() {
        resultSummary.text = "You got \(viewModel.result)"
    }

}
