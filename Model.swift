//
//  Model.swift
//  List
//
//  Created by Angel Buenrostro on 1/8/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
    
    func add(_ item: String) {
        Model.shared.items.append(item)
    }
    
    func resetItems() {
        Model.shared.items.removeAll()
    }

}

