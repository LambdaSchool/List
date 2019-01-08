//
//  Model.swift
//  iOS5-VTD-List
//
//  Created by Vijay Das on 1/8/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import Foundation
import UIKit

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
    
    func addItem(_ item: String) {
        items.append(item)
        
    }
    
    func resetItems() {
        items.removeAll()
    }
    
    
}
