//
//  ItemsController.swift
//  ListApp
//
//  Created by Nelson Gonzalez on 1/8/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

class ItemsController {
    var items = [String]()
    
    func add(_ item: String) {
        // add the item to your items list
       items.append(item)
        
    }
    
    func resetItems() {
        items.removeAll()
    }
    
   
}
