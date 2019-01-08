//
//  ItemController.swift
//  ItemList
//
//  Created by Diante Lewis-Jolley on 1/8/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class ItemsController {
    var item: [Item] = []

    func add(_ items: String) {
        let addedItem = Item(name: items)
        item.append(addedItem)
    }

    func resetItems() {
        item.removeAll()
    }
}
