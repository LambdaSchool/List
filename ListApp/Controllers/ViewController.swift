//
//  ViewController.swift
//  ListApp
//
//  Created by Nelson Gonzalez on 1/8/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    var itemsArray: [Item] = []
   
    var itemsController = ItemsController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = nil
        
    }
    
    
    
    func add(_ item: String) {
        // add the item to your items list
       itemsController.items.append(item)
  
       let joined = itemsController.items.joined(separator: "\n")
        label.text = joined
    
    }
    
    func resetItems() {
        // reset your items list here
        label.text = ""
    } 

    @IBAction func shouldAdd(_ sender: UIButton) {
        
        let text = textField.text ?? ""
       
        if !text.isEmpty {
            add(text)
            textField.text = ""
        } else {
            print("No")
        }
        
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        resetItems()
        
    }
    
    @IBAction func printButton(_ sender: UIButton) {
        
        print(itemsController.items)
    }
    
}

