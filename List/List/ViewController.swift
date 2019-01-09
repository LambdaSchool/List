//
//  ViewController.swift
//  List
//
//  Created by Luis Corvalan on 1/8/19.
//  Copyright © 2019 Luis Corvalan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    var itemsController = ItemsController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eraseLabel()
        
    }
    
    func eraseLabel() {
        label.text = nil
    }
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        
        let text = textField.text ?? ""
        
        if !text.isEmpty {
            
            textField.text = nil
            
            let newText = Item.init(name: text)
            
            itemsController.add(newText)
            
            
            
            print(itemsController.items)
            
            
//            let joined = itemsController.items.joined(separator: "\n")
            
//            label.text = joined
            
            
        }
        
        
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        
        itemsController.resetItems()
        eraseLabel()
        print(itemsController.items)
        
    }
    
    @IBAction func printList(_ sender: UIButton) {
        
        
        
    }
    
    
}

