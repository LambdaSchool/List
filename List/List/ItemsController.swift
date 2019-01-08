//
//  ItemsController.swift
//  List
//
//  Created by Jocelyn Stuart on 1/8/19.
//  Copyright © 2019 JS. All rights reserved.
//

import Foundation

class ItemsController {
    var items: [String] = []
    
    func add(_ item: String) {
        items.append(item)
        // add the item to your items list
    }
    
    func resetItems() {
        items = []
        // reset your items list here
    }
    
    
}



