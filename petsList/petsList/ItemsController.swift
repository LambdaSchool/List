//
//  ItemsController.swift
//  petsList
//
//  Created by Mary Kajiwara on 1/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class ItemsController {
    var items: [String] = []
    
    func add(_ item: String) {
        //add the item to your items list
        items.append(item)
    }
    func resetItems() {
        // reset your items list here
        items.removeAll()
    }
}
