//
//  ItemsController.swift
//  List
//
//  Created by Luis Corvalan on 1/8/19.
//  Copyright © 2019 Luis Corvalan. All rights reserved.
//

import Foundation


class ItemsController {
    
    var items: [Item] = []
    
    func add(_ item: Item) {
        // add the item to your items list
        
        items.append(item)
        
    }
    
    func resetItems() {
        // reset your items list here
        
        items.removeAll()
        
    }
    
}

