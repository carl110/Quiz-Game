//
//  Array+extensions.swift
//  Quiz Game
//
//  Created by Carl Wainwright on 16/01/2020.
//  Copyright © 2020 Carl Wainwright. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func commonElementsInArray(stringArray: [String]) -> String {
        let dict = Dictionary(grouping: stringArray, by: {$0})
        let newDict = dict.mapValues({$0.count})
        return newDict.sorted(by: {$0.value > $1.value}).first?.key ?? ""
    }
}
