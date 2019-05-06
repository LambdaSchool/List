//
//  Model.swift
//  List - List added to Label MBP
//

import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
    
    // add the item to your items list
    func add(_ item: String) {
        items.append(item)
    }
    
    // reset your list
    func resetItems() {
        items.removeAll() // items = []
    }
}
