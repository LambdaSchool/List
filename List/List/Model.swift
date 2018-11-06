//
//  Model.swift
//  List
//
//  Created by Benjamin Hakes on 11/6/18.
//  Copyright © 2018 Benjamin Hakes. All rights reserved.
//

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
    
    func add(_ item: String) {
        items.append(item)
    }
    
    func resetItems() {
        items = []
    } 
}
