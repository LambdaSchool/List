//
//  ItemsController.swift
//  List
//
//  Created by Dustin Koch on 1/8/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

import Foundation


class ItemsController {
    var items: [String] = []
    
    func add(_ item: String) {
        items.append(item)
    }
    
    func resetItems() {
        items.removeAll()
    }
}

