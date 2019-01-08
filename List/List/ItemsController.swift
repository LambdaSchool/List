//
//  ItemsController.swift
//  List
//
//  Created by Stuart on 1/8/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import Foundation

class ItemsController {
    static let test = ItemsController()
    private init() {}
    
    var items: [String] = []
    
    func add(_ item: String) {
        items.append(item)
    }
    
    func resetItems() {
        items.removeAll()
    }
}
