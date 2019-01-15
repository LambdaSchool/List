//
//  ItemController.swift
//  DianteList
//
//  Created by Diante Lewis-Jolley on 1/15/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class ItemController {
    static let shared = ItemController()
    private init() {}
    var items: [Item] = []

    func add(_ item: String) {
        let newItems = Item(name: item)
        items.append(newItems)

    }

    func remove(_ item: Item) {
        guard let index = items.index(of: item) else { return }
        items.remove(at: index)
    }

}
