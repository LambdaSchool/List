//
//  ItemController.swift
//  mylist
//
//  Created by Michael Flowers on 1/8/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import Foundation

class ItemController {
    
    //make an array to hold the items
    var items = [String]()
    
    //MARK: - CRUD FUNCTIONS
    
    //Create
    func add(_ item: String){
        items.append(item)
    }
    
    //reset/clear list
    func resetItems(){
        items.removeAll()
    }
    
}
